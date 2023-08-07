#!/usr/bin/bash
# $1 is the string to pass in
# $2 is the starting index to slice at
# $3 is the ending index to slice at
cut -c $2-$3 <<< $1