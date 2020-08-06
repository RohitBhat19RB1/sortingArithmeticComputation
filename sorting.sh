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

declare -A results

results[1]=$val1
results[2]=$val2
results[3]=$val3
results[4]=$val4
echo "values in dictionary  : " ${results[@]}

counter=1;
for values in ${results[@]}
do
Array[((counter++))]=$values
done
echo "values in array after reading from dictionary : " ${Array[@]}

for (( i=1; i<=4; i++ ))
do
        for (( j = $(( $i + 1 )); j <= 4; j++ ))
        do
                if [[ ${Array[$i]} -lt ${Array[$j]} ]]
                then
                        temp=${Array[$i]}
                        Array[$i]=${Array[$j]}
                        Array[$j]=$temp
                fi
        done
done
echo "descending order" ${Array[@]}

