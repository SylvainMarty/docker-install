#!/bin/bash

# Installation de la dernière version de Docker

printf "Installation de la dernière version de Docker...\n"
printf "L'insertion de votre mot de passe vous sera demandée.\n\n"

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates

printf "\nRécupération de la clé publique dédiée à Docker...\n\n"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Ajout du package repository
printf "\nAjout du package repository...\n\n"
printf "deb https://apt.dockerproject.org/repo ubuntu-wily main" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-get purge lxc-docker

apt-cache policy docker-engine

# Installation de l'image étendue de l'OS
printf "\nInstallation de l'image étendue de l'OS...\n\n"
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r)

# Installation de Docker Engine
printf "\nInstallation de Docker Engine...\n\n"
sudo apt-get update
sudo apt-get install docker-engine

# Installation de Docker Engine
printf "\nInitilialisation du service...\n\n"
sudo service docker start

# Test du fonctionnement de Docker
printf "\nTest du fonctionnement de Docker...\n\n"
sudo docker run hello-world

# Ajout de la permission d'utiliser Docker à l'utilisateur courant
printf "\nAjout de la permission d'utiliser Docker à l'utilisateur courant...\n\n"
sudo groupadd docker
sudo usermod -aG docker $USER
printf "/!\\ Il faudra vous déconnecter puis vous reconnecter pour que les modifications prennent effet.\n"

printf "\nInstallation de Docker terminée avec succès !\n"
