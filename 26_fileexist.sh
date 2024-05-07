#!/bin/bash

Filepath="/home/kishlay/unlockpot/myscripts/2.csv"

if [[ -f $Filepath ]]
then
        b=$(basename $Filepath)
	cat $b
	echo "found"
else
	echo "file not found"
fi
