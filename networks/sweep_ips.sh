#! /usr/bin/bash

#ip is a placeholder to loop through 1 to 254 as a range
for ip in {1..254}
do
#the '&' near the end runs the script in multiple threads
    ping -c 1 192.168.0.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done