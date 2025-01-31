# This follows the download instructions available here:
# https://bioconductor.org/packages/release/data/experiment/vignettes/FlowSorted.Blood.EPIC/inst/doc/FlowSorted.Blood.EPIC.html 

pkgs <- c("FlowSorted.Blood.EPIC", "ExperimentHub", "here")
BiocManager::install(pkgs, upgrade = FALSE, ask = FALSE)
for (pkg in pkgs) {
    suppressPackageStartupMessages(library(pkg, character.only = TRUE))
}

Sys.setenv(VROOM_CONNECTION_SIZE = 500072)

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

download.files("https://github.com/isglobal-brge/methylclock/raw/5cb84aa29c6d9ec5b93bfefd54338ccc1486e879/data/coefHorvath.rda", destfile=here::here("episodes/data/coefHorvath.rda"))
load(here::here("episodes/data/coefHorvath.rda"))

features <- coefHorvath$CpGmarker
features <- intersect(features, rownames(norm))
other_features <- setdiff(rownames(norm), features)
random_features <- sample(
    other_features,
    5000 - length(features)
)

selected <- c(features, random_features)
set.seed(42)
norm <- norm[selected, ]

saveRDS(norm, here("episodes/data/methylation.rds"))
