Scripts d'installation de Docker
================================
Scripts d'installation de Docker et docker-compose sur les 4 dernières releases d'Ubuntu.

## Installation de Docker

En fonction de votre version d'Ubuntu, exécutez les scripts suivants:

| Versions d'Ubuntu | Nom du script       |
|-------------------|---------------------|
| Precise 12.04     | `docker_precise.sh` |
| Trusty 14.04      | `docker_trusty.sh`  |
| Wily 15.04        | `docker_wily.sh`    |
| Xenial 16.04      | `docker_xenial.sh`  |

### Exemple :
```bash
# Placez-vous dans le répertoire du repository
## où '~' équivaut à /home/sylvain
## exemple
cd ~/reposories/docker_install

# Exécution du script
./docker_xenial.sh
```

## Installation de docker-compose

Exécutez le script `docker_compose.sh` :
```bash
# Placez-vous dans le répertoire du repository
## où '~' équivaut à /home/sylvain
## exemple
cd ~/reposories/docker_install

# Passage en mode administrateur
## Un mot de passe vous sera demandé
sudo -i

# Exécution du script
./docker_compose.sh
```

## Mentions légales

Les scripts d'installation de Docker présent dans ce repository demanderont l'insertion de votre mot de passe utilisateur. EN AUCUN CAS ces scripts n'enregistrent ni ne transmettent vos données personnelles.

## Issues et contributions

N'hésitez pas à déposer un issue GitHub si l'un de ces scripts ne fonctionne pas correctement.

N'hésitez pas à contribuer à l'enrichissement de ce repository si le cœur vous en dit !
