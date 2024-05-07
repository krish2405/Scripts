#!/bin/bash 

no=5
for a in {1..10}
do 
	if [[ $a -eq $no ]]
	then 
		echo "$a"
		break
	fi
	
done
