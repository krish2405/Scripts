base=/home/kishlay/unlockpot/myscripts

echo "WElcome to explorer"

k=1
while [[ $k  -eq 1 ]]
do

	if [[ ! -d $base ]]
	then
		echo "no directory found"
		exit 1
	else
		ls  -lh $base | awk '{print $9, $5 }'
	fi
	echo "do you want to exit,press 0"
	read  n

	if [[ $n -eq 0 ]]
	then
		exit 1
	fi
	read -p "Enter a text: " text
        check=$(echo "$text" | wc -c)
        echo "Character count: $check"
        if [[ -z $text ]]
	then 
		exit 1
        fi 
done
