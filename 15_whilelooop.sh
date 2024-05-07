#!/bin/bash
count=0;
sum=10;
while [[ $count -le $sum ]]
do 
	echo "${count}"
	let count++
done

