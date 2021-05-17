suppressPackageStartupMessages({
    library("FlowSorted.Blood.EPIC")
    library("ExperimentHub")
    library("here")
})

hub <- ExperimentHub()
query(hub, "FlowSorted.Blood.EPIC")  

FlowSorted.Blood.EPIC <- hub[["EH1136"]]  

norm <- preprocessQuantile(FlowSorted.Blood.EPIC)
y <- as.numeric(factor(norm$smoker)) - 1

cc <- complete.cases(y)
norm <- norm[, cc]
set.seed(42)
norm <- norm[sample(nrow(norm), 50000), ]

# plot(norm$Age, age$Horvath)
# library("methylclock")
# age <- DNAmAge(norm)
# norm$hage <- age$Horvath

saveRDS(norm, here("data/FlowSorted_Blood_EPIC.rds"))
