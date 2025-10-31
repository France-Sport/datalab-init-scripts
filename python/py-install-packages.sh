#!/bin/sh

# Installer des packages python à partir d'un fichier requirements

REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${GIT_REPO}.git
chown -R onyxia:users ${GIT_REPO}/
cd ${GIT_REPO}
pip install -r inputs/requirements-py