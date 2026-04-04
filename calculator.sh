#!/bin/bash

[[ $# != 3 ]] && { echo Error: expect 3 arguments >&2 ; exit 1 ; }

[[ !(($1 =~ ^-?[0-9]+$)) ||  ! (($3 =~ ^-?[0-9]+$))  ]] && { echo Error: invalid number >&2 ; exit 4 ; }

calc () {
  echo $1 "$2" $3 | bc  ; exit 0 
  }

div () { 
  echo $1 / $2 | bc  ; exit 0 
  }

case $2 in

  "+" | "*" | "-")
    calc $1 "$2" $3
    ;;

  "/")
    [[ $3 == 0 ]] && { echo Error: division by 0 >&2 ; exit 2 ; }
    div $1 $3
    ;;

  *)
    echo Error: invalid operator 
    exit 3
    ;;

esac
