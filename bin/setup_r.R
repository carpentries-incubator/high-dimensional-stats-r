#!/usr/bin/env Rscript

install.packages(c("BiocManager"))
BiocManager::install(version = "3.13")
deps <- read.table(
    file = url("https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/gh-pages/dependencies.csv"),
    header = FALSE
)
BiocManager::install(deps[[1]])
BiocManager::install("Alanocallaghan/shinystats")
