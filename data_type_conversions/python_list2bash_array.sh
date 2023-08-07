#!/usr/bin/bash
# $1 is the python script to run
ran=($(python3 $1 | tr -d "[],'"))