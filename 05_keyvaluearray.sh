#!/bin/bash
#key value pair array

declare -A myarray

myarray=([name]=kishlay [age]=89 [school]=harnaut)

echo "my name is ${myarray[name]}"
echo "age is ${myarray[age]}"
