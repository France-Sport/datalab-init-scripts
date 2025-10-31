#!/bin/sh

# Ce script installe la liste des packages du fichier inputs/requirements-py
# Paramètres attendus : None

# Cloner le repo
REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${REPO_GIT}.git

# Donner les droits au dossier à l'utilisateur
chown -R onyxia:users ${REPO_GIT}/
cd $REPO_GIT

# Installer des packages python
pip install -r inputs/requirements-py
pip install --upgrade pip

# Supprimer le repo
cd ..
rm -rf $REPO_GIT