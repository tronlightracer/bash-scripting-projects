#! /usr/bin/bash
# get the first 3 octets of the neteork ip
ifconfig | grep "broadcast" | cut -d " " -f 10 | cut -d "." -f 1,2,3 | grep "192" > octets.txt

# set variable to have the value of octets.txt
octets=$(cat octets.txt)

#create a new .txt named after the IP address
echo "" > $octets.txt

#loop
for ip in {1..254}
do
    ping -c 1 $octets.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $octets.txt & 
done

cat $octets.txt | sort > sorted_$octets.txt

#perform scan with NMap

nmap -sS -iL sorted_$octets.txt | grep ""

exit


