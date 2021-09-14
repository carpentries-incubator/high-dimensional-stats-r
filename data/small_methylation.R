library("minfi")
library("here")
library("ComplexHeatmap")

#methylation <- readRDS("data/methylation.rds")

methylation <- readRDS(here::here("data/methylation.rds"))   #load the data
matrix <- assay(methylation)        #set up data to fit the experimental design
metadata <- colData(methylation)    #the metadata is equal to columns in the methylation dataset

age <- methylation$Age
methyl_mat <- t(assay(methylation))    #transpose matrix

small <- methyl_mat[, 1:100]        #for the purpose of this example we will reduce the size of the matrix
cor_mat <- cor(small)    #calculate correlations between cells in matrix

saveRDS(cor_mat, file = here::here("data/small_methylation.rds"))
