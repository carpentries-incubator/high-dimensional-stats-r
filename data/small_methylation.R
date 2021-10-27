pkgs <- c("minfi", "here", "scuttle", "scran", "here")
BiocManager::install(pkgs, upgrade = FALSE, ask = FALSE)
for (pkg in pkgs) {
    suppressPackageStartupMessages(library(pkg, character.only = TRUE))
}

library("minfi")
library("here")

methylation <- readRDS(here::here("data/methylation.rds"))
matrix <- assay(methylation)

age <- methylation$Age
methyl_mat <- t(assay(methylation))

small <- methyl_mat[, 1:100]
cor_mat <- cor(small)

saveRDS(cor_mat, file = here::here("data/small_methylation.rds"))
