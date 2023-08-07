#! /usr/bin/bash
ips="$(host -t a $1 | awk '{ print $4 }')"
# ping -c is the count of how many times to ping and receive packets for each ping
for i in $ips; do ping -q -c 12 "$i"; done
