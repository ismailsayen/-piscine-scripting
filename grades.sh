#!/bin/bash

[[ $# -gt 1 || -z $1 ]] && { echo "Error: expect 1 argument only!" ; exit 1 ; }

declare -a arrr

arrr+=("ssssss")
for ((i = 1 ; i <= $1 ; i++));
do
    read -p "Student Name #$i:" name
    read -p "Student Grade #$i:" grade
    [[ ! (($grade =~ ^[0-9]+$)) || "$grade" -lt 0 || "$grade" -gt 100 ]] && { echo "The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." ; exit 1 ;}


done

 echo "${arrr[@]}"
