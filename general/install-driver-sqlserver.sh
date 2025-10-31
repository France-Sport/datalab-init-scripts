#!/bin/sh
# Ce script installe le driver ODBC 18

# Installer un driver ODBC pour SQL Server
sudo apt-get update
sudo apt-get install -y curl gnupg2 apt-transport-https software-properties-common
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18 unixodbc-dev