---
title: "K-means"
teaching: 45
exercises: 15
questions:
  - How do we detect real clusters in high-dimensional data?
  - How does K-means work and when should it be used?
  - How can we perform K-means in `R`?
  - How can we appraise a clustering and test cluster robustness?
objectives:
  - Understand the importance of clustering in high-dimensional data
  - Understand and perform K-means clustering in `R`.
  - Assess clustering performance using silhouette scores.
  - Assess cluster robustness using bootstrapping.
keypoints:
  - K-means is an intuitive algorithm for clustering data.
  - K-means has various advantages but can be computationally intensive.
  - Apparent clusters in high-dimensional data should always be treated
    with some scepticism.
  - Silhouette width and bootstrapping can be used to assess how well our
    clustering algorithm has worked.
math: yes
---




# Introduction

High-dimensional data, especially in biological settings,  has
many sources of heterogeneity. Some of these are stochastic variation
arising from measurement error or random differences between organisms. 
In some cases, a known grouping causes this heterogeneity (sex, treatment
groups, etc). In other cases, this heterogeneity arises from the presence of
unknown subgroups in the data. **Clustering** is a set of techniques that allows
us to discover unknown groupings like this, which we can often use to
discover the nature of the heterogeneity we're investigating.

**Cluster analysis** involves finding groups of observations that are more
similar to each other (according to some feature) than they are to observations
in other groups. Cluster analysis is a useful statistical tool for exploring
high-dimensional datasets as 
visualising data with large numbers of features is difficult. It is commonly
used in fields such as bioinformatics, genomics, and image processing in which
large datasets that include many features are often produced. Once groups
(or clusters) of observations have been identified using cluster analysis,
further analyses or interpretation can be carried out on the groups, for
example, using metadata to further explore groups.

There are various ways to look for clusters of observations in a dataset using
different *clustering algorithms*. One way of clustering data is to minimise
distance between observations within a cluster and maximise distance between
proposed clusters. Clusters can be updated in an iterative process so that over
time we can become more confident in size and shape of clusters.


# Believing in clusters

When using clustering, it's important to realise that data may seem to
group together even when these groups are created randomly. It's especially 
important to remember this when making plots that add extra visual aids to
distinguish clusters. 
For example, if we cluster data from a single 2D normal distribution and draw
ellipses around the points, these clusters suddenly become almost visually
convincing. This is a somewhat extreme example, since there is genuinely no
heterogeneity in the data, but it does reflect what can happen if you allow
yourself to read too much into faint signals.

Let's explore this further using an example. We create two columns of data
('x' and 'y') and partition these data into three groups ('a', 'b', 'c')
according to data values. We then plot these data and their allocated clusters
and put ellipses around the clusters using the `stat_ellipse` function
in `ggplot`.


~~~
Warning: package 'MASS' was built under R version 4.1.2
~~~
{: .warning}



~~~
Warning: package 'ggplot2' was built under R version 4.1.2
~~~
{: .warning}

<img src="../fig/rmd-08-fake-cluster-1.png" title="plot of chunk fake-cluster" alt="plot of chunk fake-cluster" width="432" style="display: block; margin: auto;" />
The randomly created data used here appear to form three clusters when we
plot the data. Putting ellipses around the clusters can further convince us
that the clusters are 'real'. But how do we tell if clusters identified
visually are 'real'?


# What is K-means clustering?

**K-means clustering** is a clustering method which groups data points into a 
user-defined number of distinct non-overlapping clusters. In K-means clustering 
we are interested in minimising the *within-cluster variation*. This is the amount that
data points within a cluster differ from each other. In K-means clustering, the distance 
between data points within a cluster is used as a measure of within-cluster variation.
Using a specified clustering algorithm like K-means clustering increases our confidence
that our data can be partitioned into groups.

To carry out K-means clustering, we first pick $k$ initial points as centres or 
"centroids" of our clusters. There are a few ways to choose these initial "centroids",
but for simplicity let's imagine we just pick three random co-ordinates.
We then follow these two steps until convergence:

1. Assign each data point to the cluster with the closest centroid
2. Update centroid positions as the average of the points in that cluster

We can see this process in action in this animation:

<img src="../fig/kmeans.gif" title="Alt" alt="Alt" style="display: block; margin: auto;" />
While K-means has some advantages over other clustering methods (easy to implement and
to understand), it does have some disadvantages, namely difficulties in identifying 
initial clusters which observations belong to and the need for the user to specifiy the
number of clusters that the data should be partitioned into.

> ## Initialisation
>
> The algorithm used in K-means clustering finds a *local* rather than a
> *global* optimum, so that results of clustering are dependent on the initial
> cluster that each observation is randomly assigned to. This initial
> configuration can have a significant effect on the final configuration of the
> clusters, so dealing with this limitation is an important part 
> of K-means clustering. Some strategies to deal with this problem are:
> - Choose $K$ points at random from the data as the cluster centroids.
> - Randomly split the data into $K$ groups, and then average these groups.
> - Use the K-means++ algorithm to choose initial values.
> 
> These each have advantages and disadvantages. In general, it's good to be
> aware of this limitation of K-means clustering and that this limitation can
> be addressed by choosing a good initialisation method, initialising clusters
> manually, or running the algorithm from multiple different starting points.
>
{: .callout}

# K-means clustering applied to single-cell RNAseq data

Let's carry out K-means clustering in `R` using some real high-dimensional data.
We're going to work with single-cell RNAseq data in these clustering exercises,
which is often *very* high-dimensional. Commonly, experiments profile the
expression level of 10,000+ genes in thousands of cells. Even after filtering
the data to remove low quality observations, the dataset we're using in this
episode contains measurements for over 9,000 genes in over 3,000 cells.

One way to get a handle on a dataset of this size is to use something we covered
earlier in the course - dimensionality reduction. Dimensionality reduction
allows us to visualise this incredibly complex data in a small number of
dimensions. In this case, we'll be using principal component analysis (PCA) to
compress the data by identifying the major axes of variation in the data,
before running our clustering algorithms on this lower-dimensional data.

The `scater` package has some easy-to-use tools to calculate a PCA for
`SummarizedExperiment` objects.
Let's load the `scRNAseq` data and calculate some principal components.


~~~
library("SingleCellExperiment")
~~~
{: .language-r}



~~~
Warning: package 'MatrixGenerics' was built under R version 4.1.1
~~~
{: .warning}



~~~
Warning: package 'S4Vectors' was built under R version 4.1.1
~~~
{: .warning}



~~~
Warning: package 'GenomeInfoDb' was built under R version 4.1.1
~~~
{: .warning}



~~~
library("scater")

scrnaseq <- readRDS(here::here("data/scrnaseq.rds"))
scrnaseq <- runPCA(scrnaseq, ncomponents = 15)
pcs <- reducedDim(scrnaseq)[, 1:2]
~~~
{: .language-r}
The first two principal components capture almost 50% of the variation within
the data. For now, we'll work with just these two principal components, since
we can visualise those easily, and they're a quantitative representation of
the underlying data, representing the two largest axes of variation. 

We can now run K-means clustering on the first and second principal components
of the `scRNAseq` data using the `kmeans` function.


~~~
set.seed(42)
cluster <- kmeans(pcs, centers = 4)
scrnaseq$kmeans <- as.character(cluster$cluster)
plotReducedDim(scrnaseq, "PCA", colour_by = "kmeans")
~~~
{: .language-r}

<img src="../fig/rmd-08-kmeans-1.png" title="Alt" alt="Alt" width="432" style="display: block; margin: auto;" />

We can see that this produces a sensible-looking partition of the data. 
However, is it totally clear whether there might be more or fewer clusters
here?

> ## Exercise
> 
> Cluster the data using a $K$ of 5, and plot it using `plotReducedDim`.
> Save this with a variable name that's different to what we just used,
> because we'll use this again later.
> 
> > ## Solution
> > 
> > 
> > ~~~
> > set.seed(42)
> > cluster5 <- kmeans(pcs, centers = 5)
> > scrnaseq$kmeans5 <- as.character(cluster5$cluster)
> > plotReducedDim(scrnaseq, "PCA", colour_by = "kmeans5")
> > ~~~
> > {: .language-r}
> > 
> > <img src="../fig/rmd-08-kmeans-ex-1.png" title="plot of chunk kmeans-ex" alt="plot of chunk kmeans-ex" width="432" style="display: block; margin: auto;" />
> > 
> {: .solution}
{: .challenge}

> ## K-medioids (PAM)
> 
> One problem with K-means is that using the mean to define cluster centroids
> means that clusters can be very sensitive to outlying observations.
> K-medioids, also known as "partitioning around medioids (PAM)" is similar to 
> K-means, but uses the median rather than the mean as the method for defining
> cluster centroids. Using the median rather than the mean reduces sensitivity of
> clusters to outliers in the data. K-medioids has had popular application in
> genomics, for example the well-known PAM50 gene set in breast cancer, which has seen some 
> prognostic applications.
> The following example shows how cluster centroids differ when created using 
> medians rather than means.
>
> 
> ~~~
> x <- rnorm(20)
> y <- rnorm(20)
> x[10] <- x[10] + 10
> plot(x, y, pch = 16)
> points(mean(x), mean(y), pch = 16, col = "firebrick")
> points(median(x), median(y), pch = 16, col = "dodgerblue")
> ~~~
> {: .language-r}
> 
> <img src="../fig/rmd-08-unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" width="432" style="display: block; margin: auto;" />
> 
{: .callout}


# Cluster separation

When performing clustering, it's important for us to be able to measure how
well our clusters are separated. One measure to test this is *silhouette width*.
For each data point, the silhouette width is the average distance
between this point and all other points in its cluster, relative to
the average distance of that point to the next closest cluster.
Ideally, we would have only large positive silhouette widths, indicating
that each data point is much more similar to points within its cluster than it is to the points in 
any other cluster. However, this is rarely the case. Often, clusters are very fuzzy, and even if we are relatively sure about
the existence of discrete groupings in the data, observations on the boundaries
can be difficult to confidently place in either cluster.

  
Here we use the `silhouette` function from the `cluster` package to calculate the
silhouette width of our K-means clustering using a distance matrix of distances
between points in the clusters.



























