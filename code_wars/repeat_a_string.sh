#!/bin/bash
repeat=$1
string=$2

# this is what I started from
# yes $2 | head -n $1

# this passes all tests!
echo $(yes $2 | head -n $1) | sed 's/ //g'

# try this line tommorow as it uses the predefined variables in the kata
# echo $(yes $string | head -n $repeat) | sed s'/ //g'


# also try this tomorrow
# for i in {1..$1}; do echo -n "$2";done
#or
# for i in {1.. $repeat}: do echo -n $string; done

#original it was taken from
#for i in {1..4}; do echo -n "FOO ";done
#which supposedly results in this:
#FOO FOO FOO FOO 