#!/bin/bash

array=(1 2 34 "kishlay")

length=${#array[*]}

for(( i=0;i<${length};i++ ))
do
	echo "${array[i]}"
done
