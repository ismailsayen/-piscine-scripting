#!/bin/bash

[[ -z $1 || -z $2 || -n $3 ]] && { echo The script only works with two arguments! ; exit 1 ; }
[[  !(($1 =~ ^[0-9]+$)) ||  ! (($2 =~ ^[0-9]+$))   ]] && { echo Error: Only two numeric arguments are acceptable! ; exit 1 ; }

if [ $1 -gt $2 ]; then
    echo "$1 > $2"
elif [ $1 -lt $2 ]; then
    echo "$1 < $2"
else
    echo "$1 = $2"
fi