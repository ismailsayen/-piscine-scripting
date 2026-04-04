#!/bin/bash

array=( red blue green white black )

[[ -z $1 || -n $2 || ${#array[@]} < $1 ]] && { echo Error ; exit 0 ; }

ind=$(expr $1 - 1)

if [ "$ind" -lt "0" ] ; then 
    echo Error ; exit 0 ; 
fi

echo "${array[$ind]}"