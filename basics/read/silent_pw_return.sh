#! /usr/bin/bash
#when -p is set the value in the qoutes is the prompt
#the value after is the variable you want to name what was read from stdin
read -p 'Username: ' usernamevar
# the -s option makes the input silent so it's not shown on the screen
read -sp 'Password: ' pwvar
echo
echo "Thank you $usernamevar we now have your login details"