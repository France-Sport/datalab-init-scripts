#!/bin/sh

# Ce script installe la liste des packages du fichier inputs/requirements-r
# Il installe ensuite un driver pour SQL Server
# Paramètres attendus : None

# Cloner le repo
REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${REPO_GIT}.git

# Donner les droits au dossier à l'utilisateur
chown -R onyxia:users ${REPO_GIT}/
cd $REPO_GIT
chmod 744 general/install-driver-sqlserver.sh

# Installer des packages python
pip install --upgrade pip
pip install -r inputs/requirements-py

# Installer un driver pour SQL Server
./general/install-driver-sqlserver.sh

# Supprimer le repo
cd ..
rm -rf $REPO_GIT