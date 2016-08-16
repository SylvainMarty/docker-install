#!/bin/bash

# Installation de la dernière version de Docker compose

printf "\n/!\\ Attention, il est important d'exécuter ce script en possédant les droits administrateurs.\n"
printf "Pour cela, exécutez le après avoir lancé la commande 'sudo -i'\n"

printf "Installation de la dernière version de docker-compose...\n"

printf "\nTéléchargement de docker-compose...\n\n"
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

# Ajout du package repository
printf "\nMise en place des droits sur l'application...\n\n"
chmod +x /usr/local/bin/docker-compose

# Ajout de la permission d'utiliser Docker à l'utilisateur courant
printf "\nTest du fonctionnement de docker-compose...\n\n"
docker-compose --version

printf "\nInstallation de docker-compose terminée avec succès !\n"
