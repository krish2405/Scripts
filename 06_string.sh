!#/bin/bash

#String 

string="how are you man"

echo "the length is ${#string}"
echo "upper case is  ${string^^}"
echo "lower case is  ${string,,}"
echo "replace how with ${string/how/wth}"
echo "Slicing string ${string:4:5}"

