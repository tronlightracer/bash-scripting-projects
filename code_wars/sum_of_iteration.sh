#!/usr/bin/bash

# if $2 > $1
#   $2=$1
#   $1=$2
# fi


counter=0
for ((c=$1; c<=$2; c++))
do
  counter=$((counter + c))
  #echo $counter  
done
echo $counter