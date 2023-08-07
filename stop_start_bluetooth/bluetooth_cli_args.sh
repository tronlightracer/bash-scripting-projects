#! /usr/bin/bash

while getopts "b:e": arg; do
    case $arg in
        b) begin=$OPTARG;;
        e) end=$OPTARG;;
    esac
done

