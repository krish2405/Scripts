#!/bin/bash

echo "provide option"
echo "a for printdate"
echo "b for list of scripts"
echo "c for location"

read choice

case $choice in 
	a)	echo "date is "
		date
		echo "Ending ..."
		;;
	b)ls;;
	c)pwd;;
	*)echo "invalid input" 
esac
