#!/bin/bash

[[ -z $3 || -n $4 ]] && { echo Error: expect 3 arguments >&2 ; exit 1 ; }

[[ ! (($1 =~ ^[0-9]$)) || ! (($3 =~ ^[0-9]$)) ]] && { echo Error: invalid number >&2 ; exit 4 ; }

