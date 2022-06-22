#! /usr/bin/bash
read one
if [ grep "THis" $one ]; then
    echo "Correct"
else
    echo "Incorrect"
fi
