#!/bin/bash -x
#echo "This is master"

read -p "Enter 3 values = " a b c
echo " 3 values entered are " $a $b $c

val1=$(( $a + $b * $c ))
echo "First operation results  " $val1

val2=$(( $a * $b + $c ))
echo "Second operation results " $val2

val3=$(( $c + $a / $b ))
echo "Third operation results " $val3

val4=$(( $a % $b + $c ))
echo "Fourth operation results " $val4
