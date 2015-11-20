FROM ubuntu:latest
MAINTAINER Vladimir Ivanov, inbox@vova-ivanov.info

RUN apt-get -y update && apt-get -y install \
    make \
    texlive-full

## User should map to this directory target markup to be compiled.
## Makefile with compilation rules should be in the root of the directory.
## Example:
##     docker pull vyivanov/latex-docker:latest
##     docker create -v /path/to/local/markup:/opt/markup --name=latex vyivanov/latex-docker:latest
##     docker start -a latex
WORKDIR /opt/markup

ENTRYPOINT ["make"]

