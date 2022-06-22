#! /usr/bin/bash

echo "Please enter your username"
read username
#stty -echo allows the next echo to be password protected

echo "Please enter your password"
stty -echo
read password
stty echo