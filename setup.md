---
layout: page
title: Setup
---

It's usually recommended that course instructors provide a virtual environment
with software and data available. However this page includes instructions
to set up for the lessons. This should take about an hour to run, depending on
the speed of your computer, your internet connection, and any packages you have
installed already. You'll need to install R 4.0 or later.

R usually enables package downloads using pre-built binaries. Some times, this is not possible,
particularly on Linux and Mac systems. In this case, R package installation often requires additional
system dependencies. If you are a Linux user, to ensure that you can download packages using the code 
below, first run the terminal commands for your distribution
[here](https://docs.posit.co/connect/admin/r/dependencies/).
Note that you will need to use root access (sudo) to install the system dependencies.
Mac users may need to use [homebrew](https://brew.sh/) to install system dependencies,
and Windows users may need to install [RTools](https://cran.r-project.org/bin/windows/Rtools/).
Ideally, installing packages will proceed without error and you can ignore these steps,
but this isn't always the case.

Previous learners have reported issues with **`igraph`**. Installation instructions for this package can be found on [https://r.igraph.org/](https://r.igraph.org/),

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
