#!/bin/sh
# Ce script installe la liste des packages du fichier inputs/requirements-r
# Il installe ensuite un driver pour SQL Server

# Cloner le repo
REPO_GIT=datalab-init-scripts
git clone --depth 1 https://github.com/France-Sport/${REPO_GIT}.git

# Donner les droits au dossier à l'utilisateur
chown -R onyxia:users ${REPO_GIT}/
chmod 744 general/install-driver-sqlserver.sh
cd $REPO_GIT

# Installer des packages R
Rscript -e "install.packages(readLines('inputs/requirements-r'), Ncpus = 2)"

# Installer un driver pour SQL Server
./general/install-driver-sqlserver.sh

# Supprimer le repo
cd ..
rm -rf $REPO_GIT