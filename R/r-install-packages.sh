#!/bin/sh

# Installer des packages R à partir d'un fichier requirements

REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${REPO_GIT}.git
chown -R onyxia:users ${REPO_GIT}/
cd ${REPO_GIT}
Rscript -e "install.packages(readLines('inputs/requirements-r'), Ncpus = 2)"