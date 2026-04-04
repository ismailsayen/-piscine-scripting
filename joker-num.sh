#!/bin/bash


if [[ $# > 1 ]] || [[ "$1" -lt 1 || "$1" -gt 100 ]] ; 
then
    echo Error: wrong argument ; exit 1 ;
fi

secret_number=$1

attemps=5

while [ $attemps -gt 0 ]
do
    echo "Enter your guess ($attemps tries left) : "
    read n


    [[ ! (($n =~ ^[0-9]+$))  ]] && {  continue ; }

    [ "$n" -gt 100 ] && {  continue ; }

    [[ $n -gt $secret_number ]] && { echo Go down ; }
    
    [[ $n -lt $secret_number ]] && { echo Go up ; }

    [[ $n -eq $secret_number ]] && { echo Congratulations, you found the number in $( expr 5 - $attemps + 1 ) moves! ; exit 0 ;}

    attemps=$(expr $attemps - 1)
done
echo You lost, the number was $secret_number


