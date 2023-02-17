
# Script de configuration de projet Django

Ce script automatise la configuration d'un nouveau projet Django sur votre machine locale, y compris la création d'un environnement virtuel, l'installation de Django, la création d'un nouveau projet et la configuration d'un dépôt Git lié à un dépôt distant sur GitHub.

## Description

Ce script invite l'utilisateur à entrer le nom d'un environnement virtuel, le nom d'un projet Django et une URL de dépôt GitHub. Il effectue ensuite les actions suivantes :

- Crée un nouvel environnement virtuel avec le nom donné.
- Active l'environnement virtuel.
- Installe Django dans l'environnement virtuel.
- Crée un nouveau projet Django avec le nom donné.
- Initialise un nouveau dépôt Git dans le répertoire du projet.
- Ajoute le dépôt distant GitHub comme origine.
- Récupère les dernières modifications de la branche principale du dépôt distant.
- Ajoute tous les fichiers du répertoire du projet à la zone de staging.
- Effectue un commit avec le message donné.
- Pousse les modifications sur la branche principale du dépôt distant.
- Lance le serveur de développement Django.

## Prérequis

 - Python 3.x
 - Git
- Un compte GitHub

## Utilisation

    1. Téléchargez ou clonez ce dépôt sur votre ordinateur.
    2. Ouvrez un terminal et naviguez jusqu'au répertoire contenant le fichier mon_code.bat.
    3. Exécutez le script en tapant mon_code.bat et en appuyant sur entrée.
    4. Suivez les instructions et entrer les informations nécessaires :
        Nom du répertoire de base
        Nom de l'environnement virtuel
        Nom du projet Django
        URL du dépôt GitHub
    5. Une fois que le script a terminé, vous pouvez choisir de lancer le serveur de développement Django en tapant "y" lorsqu'on vous le demande.

## Exemple 
    Entrez le nom du répertoire de base où tout sera stocké: Projets
    Entrez le nom de l'environnement virtuel: venv
    Entrez le nom du projet Django: mon_projet
    Entrez l'URL du dépôt GitHub: https://github.com/nom_utilisateur/nom_du_dépôt.git

## Notes
Le script suppose que vous avez déjà installé Python et Git sur votre système.  
L'environnement virtuel sera créé dans le répertoire de base.  
Le fichier .gitignore exclura le répertoire de l'environnement virtuel.  
Le script initialisera un dépôt Git, effectuera un commit initial et poussera le commit vers le dépôt distant.


## Auteur

- [@cannappin](https://github.com/cannappin)

