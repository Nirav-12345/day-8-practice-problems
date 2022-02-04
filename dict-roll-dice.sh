#!/bin/bash -x

#a)Roll a Dice

declare -A x

 x[key1]=$((RANDOM%6+1))

echo ${x[key1]}

v=(${x[key1]})

#Number of ways will take to reach that
c=0
l=${v[@]}
#incresing counter
j=0

#b)Repeating a dice and storing result
for ((i=1; i<=6; i++))

do

if [ $((v-i)) -gt 0 ]

then

c=$((c+$((v-i))))

fi
#printing result
echo $c
#c)Storing a result in dictionary
l[((j++))]=$c
#printing result
echo ${l[@]}
done




