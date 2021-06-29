suppressPackageStartupMessages({
    library("FlowSorted.Blood.EPIC")
    library("ExperimentHub")
    library("here")
})

hub <- ExperimentHub()
query(hub, "FlowSorted.Blood.EPIC")

unnorm <- hub[["EH1136"]]

norm <- preprocessQuantile(unnorm)
y <- as.numeric(factor(norm$smoker)) - 1

cn <- setdiff(colnames(colData(norm)), c("Basename", "filenames"))
colData(norm) <- colData(norm)[, cn]

cc <- complete.cases(y)
norm <- norm[, cc]
set.seed(42)
norm <- norm[sample(nrow(norm), 5000), ]

saveRDS(norm, here("data/methylation.rds"))
