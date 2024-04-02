---
layout: page
title: Setup
---

It's usually recommended that course instructors provide a virtual environment
with software and data available. However this page includes instructions
to set up for the lessons. This should take about an hour to run, depending on
the speed of your computer, your internet connection, and any packages you have
installed already. You'll need to install R 4.0 or later.

On Linux and Mac systems, R package installation often requires additional system dependencies. To ensure that you can download packages using the code below, first run the terminal commands for your Linux distribution [here](https://docs.posit.co/connect/admin/r/dependencies/). For Mac systems, you can use the Ubuntu code. Note that you will need to use root access (sudo) to install the system dependencies. Windows users can skip this step.

All learners should then run the following code to download the data and install the libraries
used in this lesson:

```r
install.packages("BiocManager")
download.file(
    "https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/dependencies.csv",
    destfile = 'dependencies.csv'
)
table <- read.table('dependencies.csv')
BiocManager::install(table[[1]])

dir.create("data", showWarnings = FALSE)
data_files <- c(
    "cancer_expression.rds",
    "coefHorvath.rds",
    "methylation.rds",
    "scrnaseq.rds",
    "prostate.rds"
)
for (file in data_files) {
    download.file(
        url = file.path(
            "https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/data",
            file
        ),
        destfile = file.path("data", file)
    )
}
```

{% include links.md %}
