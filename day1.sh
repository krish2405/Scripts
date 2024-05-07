#!/bin/bash
#Task 1 :comment 

#example of comment in script

#Task 2: Echo
echo "Hello Kishlay Kumar"

#Task 3: Variables
a=10
b=19

#Task 4: Using Variable
echo "The sum is $(( $a + $b))"

#Task 5 : Using built in variables
let s=$a+$b
echo "The sum in s is $s"
echo "current path - $PWD"
echo "my hostname - $HOSTNAME"
echo "UID is - $UID"
#Task 6: Wildacrds
base=/home/kishlay/unlockpot/myscripts

echo $(ls $base | grep "loop")

