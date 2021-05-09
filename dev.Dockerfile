FROM rocker/r-base:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    && rm -rf /var/lib/apt/lists/*

RUN install.r shiny rmarkdown intrval

RUN echo "local(options(shiny.port = 3838, shiny.host = '0.0.0.0'))" > /usr/lib/R/etc/Rprofile.site

RUN mkdir /root/app

# This is a development environment, so use docker volumes instead of COPY.  IN ADDITION??
COPY app /root/app

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/app')"]
