#!/usr/bin/bash

counter=0
if $1 > $2;
then
  for ((c=$1; c>=$2; c++))
  do
  counter=$((counter + c))
  done
else
  for ((c=$1; c<=$2; c++))
  do
  counter=$((counter + c))
  done
fi
echo $counter
