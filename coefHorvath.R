download.files("https://github.com/isglobal-brge/methylclock/raw/5cb84aa29c6d9ec5b93bfefd54338ccc1486e879/data/coefHorvath.rda", destfile=here::here("episodes/data/coefHorvath.rda"))
load(here::here("episodes/data/coefHorvath.rda"))
coef <- coefHorvath

methylation <- readRDS(here::here("episodes/data/methylation.rds"))
coef <- coef[coef$CpGmarker %in% rownames(methylation), ]
coef <- coef[order(coef$CoefficientTrainingShrunk, decreasing = TRUE), ]

saveRDS(coef, here::here("episodes/data/coefHorvath.rds"))
