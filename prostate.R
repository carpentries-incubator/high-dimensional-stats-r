library("here")
x <- read.csv(here("data/prostate.csv"))
x <- x[, -1]
saveRDS(x, here("data/prostate.rds"))
