#!/bin/bash

fun() {
local num1=$1
local num2=$2
let sum=$num1+$num2
echo "sum is $sum"
}

fun 2 3
