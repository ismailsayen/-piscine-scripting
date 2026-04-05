#!/bin/bash

[[ $# -gt 1 || -z $1 ]] && { echo "Error: expect 1 argument only!" ; exit 1 ; }

declare -a arrr

for ((i = 1 ; i <= $1 ; i++));
do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade
    [[ ! (($grade =~ ^[0-9]+$)) || "$grade" -lt 0 || "$grade" -gt 100 ]] && { echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." ; exit 1 ;}
    [[ $grade -ge 90 ]] && { arrr+=("$name: You did an excellent job!") ; continue ; }
    [[ $grade -ge 70 ]] && { arrr+=("$name: You did a good job!") ; continue ; }
    [[ $grade -ge 50 ]] && { arrr+=("$name: You need a bit more effort!") ; continue ; }
    arrr+=("$name: You had a poor performance!")
done

# echo ${arrr[0]}

for i in ${!arrr[@]}
do 
    echo ${arrr[$i]}
done