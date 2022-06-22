#! /usr/bin/bash

echo "These are the builtin bash variables"

echo "This is the name of the bash script: $0"
echo "This is the 1st argument $1, this is the 2nd argument passed in $2"
echo "This is the amount of how many arguments were passed in: $#"
echo "These are all the arguments supplied to the bash script: $@"
# the exit status of the most recently run process is $?
echo "This is the process ID of the current script: $$"
echo "This is the username of the user running the script: $USER"
echo "This is the hostname of the machine: $HOSTNAME"
echo "This is the number of seconds since the script was started: $SECONDS"
echo "This returns a random number each time its referenced $RANDOM"
echo "This returns the current line number in the bash script: $LINENO" #15
var=[1,2,3,4]
echo "this is a variable set in the script: $var"