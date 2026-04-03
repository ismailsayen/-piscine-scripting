#!/bin/bash



read -p "Enter a number: " n
echo $n
[[ ! (( $n =~ ^[0-9]+$ )) ]] && { echo no ; } 