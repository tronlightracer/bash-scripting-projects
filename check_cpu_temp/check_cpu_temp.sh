#! /usr/bin/bash

temp_file=/sys/class/thermal/thermal_zone0/temp
temp_o=$(cat $temp_file)
temp_c=$((temp_o/1000))
temp_f_inter=$((temp_c))
#temp_f=$((temp_f_inter))
echo $temp_f_inter
