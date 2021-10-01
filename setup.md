---
layout: page
title: Setup
---

The following code will download the data and install the libraries
used in the current version of this lesson:

```r
install.packages("BiocManager")
download.file("https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/dependencies.csv")
table <- read.table('dependencies.csv')
BiocManager::install(table[[1]])

dir.create("data", showWarnings = FALSE)
data_files <- c(
    "cancer_expression.rds",
    "coefHorvath.rds",
    "methylation.rds",
    "scrnaseq.rds",
    "small_methylation.rds"
)
for (file in data_files) {
    download.file(
        url = file.path(
            "https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages",
            file
        ),
        destfile = file.path("data", file)
    )
}
```


{% include links.md %}
