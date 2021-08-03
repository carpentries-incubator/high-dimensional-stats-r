Rscript -e "source(file.path('bin', 'dependencies.R')); tab <- read.table('dependencies.csv'); BiocManager::install(tab[[1]])"
