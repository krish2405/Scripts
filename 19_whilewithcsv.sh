#!/bin/bash

while IFS="," read f1 f2 f3
do
	echo "${f1}"
	echo "${f2}"
	echo "${f3}"
done < 2.csv
