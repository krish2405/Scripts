#!/bin/bash
#Array

myarray=(1 3 45 "sknd" 7.9)
echo "${myarray[0]}"
echo "${myarray[3]}"
myarray+=(894 904 4004)
echo "value of array is ${myarray[*]}"
echo "value of array from index 2 to 3 is ${myarray[*]:2:2 }"
echo "length of array is ${#myarray[*]}"
