data_files <- c(
    "cancer_expression.rds",
    "coefHorvath.rds",
    "methylation.rds",
    "scrnaseq.rds",
    "prostate.rds",
    "cres.rds"
)
for (file in data_files) {
    download.file(
        url = file.path(
            "https://raw.githubusercontent.com/alanocallaghan/high-dimensional-stats-r-data/main/",
            file
        ),
        destfile = file.path("episodes/data", file)
    )
}
