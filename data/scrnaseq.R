## preamble
suppressPackageStartupMessages({
    library("scRNAseq")
    library("scater")
    library("scuttle")
    library("scran")
    library("here")
})
set.seed(42)

zd <- ZeiselBrainData()
zd <- computeSumFactors(zd, cluster=quickCluster(zd))
zd <- logNormCounts(zd)

saveRDS(zd, here("data/scrnaseq.rds"))
