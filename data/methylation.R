suppressPackageStartupMessages({
    library("FlowSorted.Blood.EPIC")
    library("ExperimentHub")
    library("here")
})

hub <- ExperimentHub()
query(hub, "FlowSorted.Blood.EPIC")

unnorm <- hub[["EH1136"]]

norm <- preprocessQuantile(unnorm)
rm(unnorm); gc();

drop <- c(
    "Sample_Plate",
    "Chip",
    "Basename", "filenames",
    "Subject.ID", "smp_type",
    "Sample_Group",
    "Pool_ID", "Replicate",
    "Array_well",
    "xMed", "yMed",
    "CD4T", "CD8T", "Bcell", "NK", "Mono", "Neu", "CellType",
    "predictedSex", "normalmix"
)
cn <- setdiff(colnames(colData(norm)), drop)
colData(norm) <- colData(norm)[, cn]

cc <- complete.cases(norm$Age)
norm <- norm[, cc]
set.seed(42)
norm <- norm[sample(nrow(norm), 5000), ]

saveRDS(norm, here("data/methylation.rds"))
