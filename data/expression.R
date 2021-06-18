##R script for preparing data for high-dimensional statistics workshop##
##12/05/2021


##For Dimensionality Reduction lesson##


#Two datasets will be used in this lesson: 
#Gene expression profiling in breast cancer dataset available from BioConductor
#Microbiome dataset from BioConductor


##PCA using PCAtools##

#See tutorial at https://bioconductor.org/packages/release/bioc/vignettes/PCAtools/inst/doc/PCAtools.html
#Prep data in same way so that datasets are comparable and participants can follow rest of code online
#Use PCAtools as way of preparing the dataset, carrying out basic PCA and creating useful plots
#For different tools may need to use different packages using same dataset


#Install package from GitHub

# if (!requireNamespace('devtools', quietly = TRUE))
#   install.packages('devtools')

# devtools::install_github('kevinblighe/PCAtools')


#Download package from BioConductor

#if (!requireNamespace('BiocManager', quietly = TRUE))
#install.packages('BiocManager')

#BiocManager::install('PCAtools')


#Load package into R session

library("PCAtools")


#Load and prepare breast cancer data

library("Biobase")
library("GEOquery") #dataset is accessed via GEO


# load series and platform data from GEO
gset <- getGEO('GSE2990', GSEMatrix = TRUE, getGPL = FALSE)  #eSet object
mat <- exprs(gset[[1]])  #access expression and error measurements of assay data

# remove Affymetrix control probes from the data
mat <- mat[-grep('^AFFX', rownames(mat)),]    #see vignette for why this is done
#nrow = 22215
#ncol = 189

# extract information of interest from the phenotype data (pdata)
idx <- which(colnames(pData(gset[[1]])) %in%
               c('relation', 'age:ch1', 'distant rfs:ch1', 'er:ch1',
                 'ggi:ch1', 'grade:ch1', 'size:ch1',
                 'time rfs:ch1'))
#keep these as this follows what researchers did in example
metadata <- data.frame(pData(gset[[1]])[,idx], row.names = rownames(pData(gset[[1]])))
#nrow = 189
#ncol = 8

#redefine column names
colnames(metadata) <- c('Study', 'Age', 'Distant.RFS', 'ER', 'GGI', 'Grade','Size', 'Time.RFS')

#Prepare certain phenotypes of interest
#Follows example online
metadata$Study <- gsub('Reanalyzed by: ', '', as.character(metadata$Study))
metadata$Age <- as.numeric(gsub('^KJ', NA, as.character(metadata$Age)))
metadata$Distant.RFS <- factor(metadata$Distant.RFS,
                               levels = c(0,1))
metadata$ER <- factor(gsub('\\?', NA, as.character(metadata$ER)),
                      levels = c(0,1))
metadata$ER <- factor(ifelse(metadata$ER == 1, 'ER+', 'ER-'),
                      levels = c('ER-', 'ER+'))
metadata$GGI <- as.numeric(as.character(metadata$GGI))
metadata$Grade <- factor(gsub('\\?', NA, as.character(metadata$Grade)),
                         levels = c(1,2,3))
metadata$Grade <- gsub(1, 'Grade 1', gsub(2, 'Grade 2', gsub(3, 'Grade 3', metadata$Grade)))
metadata$Grade <- factor(metadata$Grade, levels = c('Grade 1', 'Grade 2', 'Grade 3'))
metadata$Size <- as.numeric(as.character(metadata$Size))
metadata$Time.RFS <- as.numeric(gsub('^KJX|^KJ', NA, metadata$Time.RFS))

#metadata2<-metadata

# remove samples from the pdata that have any NA value
discard <- apply(metadata, 1, function(x) any(is.na(x)))
metadata <- metadata[!discard,]
#nrow = 91
#ncol = 8

# filter the expression data to match the samples in pdata
mat <- mat[,which(colnames(mat) %in% rownames(metadata))]
#nrow = 22215
#ncol = 91

# check that sample names match exactly between pdata and expression data 
all(colnames(mat) == rownames(metadata))

#colnames in may are equal to rownames in metadata, so that's good!


#save datasets mat and metadata
saveRDS(mat, file = here("data/cancer_expression.rds"))
saveRDS(metadata, file = here("data/cancer_metadata.rds"))
