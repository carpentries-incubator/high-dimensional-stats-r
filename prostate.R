library("here")
x <- read.csv(here("episodes/data/prostate.csv"))
x <- x[, -1]
saveRDS(x, here("episodes/data/prostate.rds"))
