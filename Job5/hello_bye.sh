#!/bin/bash

#Condition if paramétre1 = Hello echo ""
if [ "$1" == "Hello" ];then
	echo "Bonjour je suis un script !"
#Condition elseif paramétre1 = Bye echo ""
elif [ "$1" == "Bye" ];then
	echo "Au revoir ..."
fi
