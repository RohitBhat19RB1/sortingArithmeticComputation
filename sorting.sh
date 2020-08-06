#!/bin/bash -x
#echo "This is master"

read -p "Enter 3 values = " a b c
echo " 3 values entered are " $a $b $c

val1=$(( $a + $b * $c ))
echo "First operation results  " $val1

val2=$(( $a * $b + $c ))
echo "Second operation results " $val2
