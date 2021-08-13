coef <- methylclock::coefHorvath
methylation <- readRDS(here::here("data/methylation.rds"))
coef <- coef[coef$CpGmarker %in% rownames(methylation), ]

saveRDS(coef, here::here("data/coefHorvath.rds"))
