#!/bin/bash

file="/home/corentin/shell-exe/Job9/Shell_Userlist.csv"

#utilisation de ifs pour lire les lignes du fichier csv
while IFS=, read -r Id Prenom Nom Mdp Role
do
#if vérifie id n'est pas un nombre pour skip la ligne
    if [ "$Id" = "$Id" ] 2>/dev/null;
#then useradd pour ajouter les utilisateur probléme d'Id
        then 
            useradd -u $Id -p $Mdp ${Prenom,,} 
#pas essayer vu que probléme a la ligne d'avant
        if [ ${Role:0:5}  = "Admin" ];
            then 
                usermod -aG sudo ${Prenom,,}
        fi
    fi
done < $file
