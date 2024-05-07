#!/bin/bash
#ifelse

read -p "give your marks" mark

if [[ $mark -gt 90 ]]
then
	echo "passs"
elif [[ $mark -ge 80 ]]
then
	echo "second"
else
	echo "fail"
fi
