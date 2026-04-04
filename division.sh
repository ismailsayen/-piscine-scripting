#!/bin/bash

if [[ -z $1 || -z $2 ]] ; then
    echo Error: two numbers must be provided
    exit 0
fi

if [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]] ; then  
    [ $2 -eq "0" ] && { echo Error: division by zero is not allowed ; exit 0;}
    echo " $1 / $2" | bc
else
    echo Error: both arguments must be integers
    exit 0
fi
