#!/bin/bash

while read myvar
do
	echo "value of myvar is ${myvar}"
done < 1.txt
