#!/bin/bash

[[ -z $1 || -n $2 || ! ((-d $1)) ]] && { echo Error ; exit 1 ; }

touch -t 01010001 $1/ciao && chmod 442 $1/ciao
mkdir $1/mamma && chmod 777 $1/mamma && touch -t 01020001  $1/mamma
touch -t 01030001 $1/guarda && chmod 400 $1/guarda
touch -t 01040001 $1/come && chmod 642 $1/come
mkdir $1/mi && chmod 452 $1/mi && touch -t 01050001  $1/mi
touch -t 01060001 $1/diverto && chmod 421 $1/diverto
