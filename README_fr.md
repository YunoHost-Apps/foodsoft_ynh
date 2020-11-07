# Foodsoft pour YunoHost

[![Integration level](https://dash.yunohost.org/integration/foodsoft.svg)](https://dash.yunohost.org/appci/app/foodsoft) ![](https://ci-apps.yunohost.org/ci/badges/foodsoft.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/foodsoft.maintain.svg)  
[![Installer Foodsoft avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=foodsoft)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Foodsoft rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble

[Foodsoft](https://foodcoops.github.io/) est une application web pour gérer un groupement d'achats à but non lucratif (catalogue des produits, commandes, comptes utilisateurs, assignation des tâches à accomplir). Un groupement d'achats est un groupe de personnes qui achètent de la nourriture directement aux producteurs de leur choix. Un supermaché collectif fait-maison.
Les membres peuvent commander leurs produits en ligne et les collectent le jour de la distribution.
Chaque personne fait sa part du travail pour rendre cela possible.
Foodsoft facilite le processus.

**Version embarquée :** 4.6.0

## Identifiants

LDAP n'est pas encore supporté. Définir un mot de passe administrateur lors de l'installation n'est pas non plus encore supporté. Cependant déinir des détails du profil administrateur comme nom d'utilisateur, nom, prénom et email sont bien supportés.
Lors de votre première connection en tant qu'administrateur vous devrez utiliser le mot de passe *secret* et le changer immédiatement après votre première connection.

## Procédure de pré-installation
Veuillez considérer ceci avant l'installation : 

- Il y a beaucoup d'options de configuration demandées lors de l'installation. Veuillez consulter le fichier de configuration par défaut pour comprendre à quoi correspond tout cela.

## Statut
Ceci est un nouveau paquet plutôt expérimental. Veuillez tester avec précaution.
Seules les action installer et désinstaller fonctionnent.Veuillez consulter (ce ticket)[https://github.com/YunoHost-Apps/foodsoft_ynh/issues/1] pour voir où ça en est pour le reste.
Assurez-vous de vérifier les problèmes et le travail en cours dans le tracker de bug.

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/foodsoft/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/foodsoft/)


## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/foodsoft_ynh/issues
 * Site de l'application : https://foodcoops.github.io/
 * Dépôt de l'application principale : https://github.com/foodcoops/foodsoft
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
ou
sudo yunohost app upgrade foodsoft -u https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
```

