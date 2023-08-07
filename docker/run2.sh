#! /usr/bin/bash

while getopts ":p:n:i:" arg; do
    case $arg in 
        p) port=$OPTARG;;
        n) name=$OPTARG;;
        i) image=$OPTARG;;
    esac
done
docker run -t -d -p $port:$port --name $name $image
