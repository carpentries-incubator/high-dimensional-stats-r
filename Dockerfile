FROM bioconductor/bioconductor_docker:devel

MAINTAINER alan.ocallaghan@outlook.com
LABEL authors="alan.ocallaghan@@outlook.com" \
    description="Docker image containing dependencies for the Carpentries Incubator lesson 'High dimensional statistics with R' in a Bioconductor-devel container."

RUN git clone https://github.com/rbenv/ruby-build.git && \
  PREFIX=/usr/local ./ruby-build/install.sh && \
  ruby-build -v 2.7.7 /usr/local

RUN gem install github-pages bundler kramdown

RUN python3 -m pip install --upgrade pip setuptools wheel pyyaml==5.3.1 requests

RUN Rscript -e "BiocManager::install('isglobal-brge/methylclock')"
RUN echo 'options(Ncpus=parallel::detectCores())' >> .Rprofile
RUN wget https://raw.githubusercontent.com/carpentries-incubator/high-dimensional-stats-r/main/dependencies.csv
RUN Rscript -e 'pkgs <- read.csv("dependencies.csv", header=FALSE); BiocManager::install(pkgs[[1]])'
