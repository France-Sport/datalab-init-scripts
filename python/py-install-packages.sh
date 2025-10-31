#!/bin/sh

# Installer des packages python à partir d'un fichier requirements

REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${REPO_GIT}.git
chown -R onyxia:users ${REPO_GIT}/
cd ${REPO_GIT}
pip install -r inputs/requirements-py