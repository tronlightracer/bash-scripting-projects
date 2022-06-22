#! /usr/bin/bash
echo "what is your name?"
read name
if [ name ]
then
    echo "$name sounds alright to me"
else
    echo "doesn't sound like anything to me"
fi
