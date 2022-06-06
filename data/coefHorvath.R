## this is hard to install with github actions...
# if (!"methylclock" %in% rownames(installed.packages())) {
#     remotes::install_github("isglobal-brge/methylclock", upgrade = "never")
# }
# coef <- methylclock::coefHorvath
# dput(coef, "data/coefHorvath-raw.txt")
coef <- dget("data/coefHorvath-raw.txt")

methylation <- readRDS(here::here("data/methylation.rds"))
coef <- coef[coef$CpGmarker %in% rownames(methylation), ]
coef <- coef[order(coef$CoefficientTrainingShrunk, decreasing = TRUE), ]

saveRDS(coef, here::here("data/coefHorvath.rds"))
