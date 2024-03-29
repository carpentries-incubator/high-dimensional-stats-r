pkgs <- c("scRNAseq", "scater", "scuttle", "scran", "here")
BiocManager::install(pkgs, upgrade = FALSE, ask = FALSE)
for (pkg in pkgs) {
    library(pkg, character.only = TRUE)
}
set.seed(42)

zd <- ZeiselBrainData()

cs <- colSums(counts(zd))
cz <- colMeans(counts(zd) != 0)
plot(cz, cs, log = "y")


rs <- rowMeans(counts(zd))
rz <- rowMeans(counts(zd) != 0)
plot(rz, rs, log = "y")

pass_gene <- rs > 0.1 & rz > 0.1
pass_cell <- rep(TRUE, ncol(zd))
zd <- zd[pass_gene, pass_cell]

zd <- computeSumFactors(zd, cluster = quickCluster(zd))

zd <- logNormCounts(zd)

saveRDS(zd, here("data/scrnaseq.rds"))
