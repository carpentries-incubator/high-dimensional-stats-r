Rscript -e "source(file.path('bin', 'dependencies.R')); install_required_packages(); write(identify_dependencies(), 'dependencies.csv', sep='\n')"
