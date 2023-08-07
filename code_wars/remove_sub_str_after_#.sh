#!/usr/bin/bash

t="MULTI: primary virtual IP for xyz/x.x.x.x:44595: 10.0.0.12"
searchstring="#"

rest=${t#*$searchstring}
echo $(( ${#1} - ${#rest} - ${#searchstring} ))