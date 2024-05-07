#!/bin/bash 
#logical operator

read -p "enter age " age
read -p "enter name" name

if [[ $age -gt 40 && $name == "kishlay" ]]
then
	echo "hello user"
elif [[ $age -le 35 || $name == "harsh" ]]
then
	echo "hello assistant"
else
	echo "ae tatti tera naam kya hai"
fi
