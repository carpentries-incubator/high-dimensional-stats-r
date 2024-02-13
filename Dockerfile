FROM bioconductor/bioconductor_docker:devel

LABEL authors="alan.ocallaghan@@outlook.com" \
    description="Docker image containing dependencies for the Carpentries Incubator lesson 'High dimensional statistics with R' in a Bioconductor-devel container."

RUN \curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 3.2.3"
RUN /bin/bash -l -c "gem install github-pages bundler kramdown --no-rdoc"


RUN python3 -m pip install --upgrade pip setuptools wheel pyyaml==5.3.1 requests

RUN echo 'options(Ncpus=parallel::detectCores())' >> .Rprofile
RUN wget https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/main/dependencies.csv
RUN Rscript -e 'pkgs <- read.csv("dependencies.csv", header=FALSE); BiocManager::install(pkgs[[1]])'
RUN Rscript -e "BiocManager::install('isglobal-brge/methylclock')"
