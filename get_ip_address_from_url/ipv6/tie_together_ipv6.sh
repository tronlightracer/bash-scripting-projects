#!/usr/bin/bash

# ATTENTION

# "[],'" is necessary as a delimiter for tr to convert the python list into a bash array
ran=$(python3 top_100_websites_list.py |tr -d "[],'")
for i in $ran;
do
  ip_addr=$(host $i | head -n 2 | tail -n 1 | awk '{print $NF}')
  echo $ip_addr
  python3 ipinfo.py --ip $ip_addr
done

# old code
# ip_addr=$(host $1 | head -n 2 | tail -n 1 | awk '{print $NF}')
# echo $ip_addr
# python3 ipinfo.py --ip $ip_addr