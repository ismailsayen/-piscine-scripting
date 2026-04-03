#!/bin/bash

array=( red blue green white black )

[[ -z $1 || -n $2 || ${#array[@]} < $1 ]] && { echo Error ; exit 0 ; }

echo "${array[$1-1]}"