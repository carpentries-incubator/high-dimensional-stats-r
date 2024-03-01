library("here")
x <- read.csv(here("data/prostate.csv"))
saveRDS(x, here("data/prostate.rds"))
