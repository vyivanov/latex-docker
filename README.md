# latex-docker container

This docker container is intended to bringup full setup to build LaTeX documents.

## Usage

User should map target directory with LaTeX markup into /opt/markip.
Makefile with compilation rules should be in the root of that directory.

Example:
```
docker pull vyivanov/latex-docker:master
docker create -v /path/to/local/markup:/opt/markup --name=latex vyivanov/latex-docker:master
docker start -a latex
```
