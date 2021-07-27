noise_sd <- 1
npred <- 99
frac <- 0.2
nobs <- 100
x <- replicate(npred - 1, rnorm(nobs, mean = 0, sd = 1))
colnames(x) <- paste0("feature_", seq_len(npred - 1))
rownames(x) <- paste0("sample", seq_len(nobs))
noise <- rnorm(nobs, mean = 0, sd = noise_sd)
x <- cbind(intercept = rep(1, nobs), x)
beta <- rep(0, npred)
names(beta) <- colnames(x)
ind <- as.logical(rbinom(npred, 1, frac))
beta[ind] <- rnorm(sum(ind)) + sample(c(-1, 1), sum(ind), replace = TRUE)
y <- ((x %*% beta) + noise)[, 1]
y <- y - min(y) + 20
y <- round(y)

se <- SummarizedExperiment(
    assays = list(methylation = x[, -1]),
    colData = data.frame(
        age = y
    ),
    rowData = data.frame(
        true_beta = beta[-1]
    )
)

saveRDS(se, here("data/synthetic.rds"))
