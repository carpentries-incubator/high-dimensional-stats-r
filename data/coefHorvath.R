coef <- methylclock::coefHorvath
methylation <- readRDS(here::here("data/methylation.rds"))
coef <- coef[coef$CpGmarker %in% rownames(methylation), ]
coef <- coef[order(coef$CoefficientTrainingShrunk, decreasing = TRUE), ]

saveRDS(coef, here::here("data/coefHorvath.rds"))
