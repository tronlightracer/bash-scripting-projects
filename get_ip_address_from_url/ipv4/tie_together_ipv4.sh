#!/usr/bin/bash
ran=$(python3 top_100_websites_list.py | tr -d "[],'")
for i in $ran;
do
  # NF gives the total number of fields in a string
  ip_addr=$(host $i | head -n 1 | awk '{print $NF}')
  echo $ip_addr
  python3 ipinfo.py --ip $ip_addr
done

# old code
# ip_addr=$(host $1 | head -n 1 | awk '{print $NF}')
# echo $ip_addr 

# python3 ipinfo.py --ip $ip_addr
