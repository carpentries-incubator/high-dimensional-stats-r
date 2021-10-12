#!/usr/bin/env Rscript

install.packages(c("BiocManager"))
BiocManager::install(version = "3.13")
deps <- read.table(
    file = url("https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/dependencies.csv"),
    header = FALSE
)
BiocManager::install(deps[[1]])
BiocManager::install("Alanocallaghan/shinystats")

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
