#!/bin/bash

largest=0

for i in {1..10}
do
read -p "Enter a number: " n
[[ ! (( "$n" =~ ^[0-9]+$ )) ]] && { echo ERROR: Invalid input only positive numerical characters are allowed ; exit 1 ;} 

[[ "$n" -gt 10000 ]] && { echo ERROR: The number entered is too large ; exit 1 ;} 

[[ "$n" -gt largest ]] && { largest=$n ;} 

done
echo The largest number is: $largest