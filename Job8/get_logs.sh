#!/bin/bash

#Variable du fichier avec la variable Date a l'intérieur.
file=("number_connection-$(date +"%d-%m-%Y-%H:%M")")

#Commande last qui récupére les derniers logs de session le grep pour filtrer ma sesion et le wc -l pour compter le nombre de ligne a mettre dans le fichier grace au chevron.
last | grep 'corentin'  | wc -l > $file
#Création du fichier Backup avec le tiret -p qui permet de le créer si il ne l'est pas déja et si déja créé il ne fait rien.
mkdir -p /home/corentin/shell-exe/Job8/Backup
#tar du fichier avec le chemin absolu pour crontab.
tar -cf /home/corentin/shell-exe/Job8/$file.tar $file
#mv du fichier tar dans le backup.
mv "/home/corentin/shell-exe/Job8/$file.tar" "/home/corentin/shell-exe/Job8/Backup"
#rm du fichier txt
rm /home/corentin/shell-exe/Job8/$file
#rm du fichier qui se place dans le home a cause du crontab
rm /home/corentin/$file
