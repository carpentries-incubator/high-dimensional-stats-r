#!/usr/bin/env Rscript

install.packages(c("BiocManager"))
BiocManager::install(version = "3.13")
deps <- read.table(
    url("https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/master/dependencies.csv")
)
BiocManager::install(deps[[1]])
BiocManager::install("Alanocallaghan/shinystats")
