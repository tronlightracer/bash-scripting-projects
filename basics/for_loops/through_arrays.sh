#!/usr/bin/bash

declare -a mahabharata
mahabharata[0]="Krishna"
mahabharata[1]="Yudhishthira"
mahabharata[2]="Bheema"
mahabharata[3]="Arjuna"
mahabharata[4]="Draupadi"
mahabharata[5]="Duryodhana"

length=${#mahabharata[@]}
echo "The length of mahabbarata is ${length}"

for ((j=0; j<${length}; j++));
do
  printf "Current index %d with value %s\n" $j ${mahabharata[$j]}
done

# how to print the entire array with printf
printf "%s " "${mahabharata[@]}"