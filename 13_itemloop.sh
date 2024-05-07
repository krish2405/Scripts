#!/bin/bash 
data="/home/kishlay/unlockpot/myscripts/1.txt"

for d in $(cat $data)
do
	echo "${d}"
done
