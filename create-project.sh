#!/bin/bash
#déclaration de la variable dossier
project_name="$1"

#création du dossier d'après le nom de la variable passée en argument à l'execution du script puis message de confirmation
mkdir ~/Projects/$project_name 
echo "Dossier $project_name crée à l'emplacement ~/Projects/$project_name"

#création du fichier README.md à l'intérieur de son dossier parent, et comportant le nom du dossier en titre. 
echo "# $project_name" > ~/Projects/$project_name/README.md
#message de création du fichier
echo "Fichier README.md initialisé à l'emplacement ~/Projects/$project_name/README.md"

#création du fichier au nom du projet à l'intérieur du dossier de même nom puis message de confirmation de création du fichier.
touch ~/Projects/$project_name/$project_name
echo "Fichier $project_name initialisé à l'emplacement ~/Projects/$project_name/$project_name"
#message de confirmation d'initialisation du projet
echo "Projet $project_name initialisé"

#affichage des droits d'accès du script puis de son contenu et du contenu du  fichier README.MD
ls -lh ~/Projects/$project_name/*
cat ~/Projects/create-project.sh
cat ~/Projects/$project_name/README.md
