#!bin/bash 

for a in {1..10}
do 
	let r=$a%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "han ji bhaiya"
done
