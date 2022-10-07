#!/bin/bash

while IFS="," read -r id prenom nom mdp role;do
    if [ $"prenom" = $"prenom" ]
        then deluser --remove-home ${prenom}
    fi
done < Shell_Userlist.csv