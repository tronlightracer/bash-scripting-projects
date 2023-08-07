#!/usr/bin/bash

# use {1..2} to specify a range of numbers
# to specify the stepping of the for loop utilize the third parameter
for i in {0..8..2}
do
    echo "welcome $i times"
done