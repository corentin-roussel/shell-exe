#!/bin/bash

#if result variable = a paramétre1(chiffre) paramétre2(operator) paramétre3(chiffre) echo variable result. 
if result=$(($1 $2 $3));then 
	echo "Voila le résultat :" $result
fi
