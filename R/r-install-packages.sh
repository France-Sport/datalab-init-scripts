#!/bin/sh
# Ce script installe la liste des packages du fichier inputs/requirements-r

# Cloner le repo
REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${REPO_GIT}.git

# Donner les droits au dossier à l'utilisateur
chown -R onyxia:users ${REPO_GIT}/
cd ${REPO_GIT}

# Installer des packages R
Rscript -e "install.packages(readLines('inputs/requirements-r'), Ncpus = 2)"

# Supprimer le repo
cd ..
rm -d $REPO_GIT