#!/usr/bin/env Rscript

library("utils")
if (!"BiocManager" %in% rownames(installed.packages())) {
    install.packages("BiocManager")
}
BiocManager::install(version = "3.13")
table <- read.table(
    url("https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/dependencies.csv"),
    header = FALSE
)
BiocManager::install(table[[1]])
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
    if (!file.exists(file.path("data", file))) {
        download.file(
            url = file.path(
                "https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/data",
                file
            ),
            destfile = file.path("data", file)
        )
    }
}
