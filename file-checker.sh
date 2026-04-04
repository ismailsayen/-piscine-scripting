#!/bin/bash

[[ -z $1 ]] && { echo Error: No file provided ; exit 0 ;}


[[ -a $1 ]] && { echo File exists ; } || { echo File does not exist ; exit 0 ;}

[[ -r $1 ]] && { echo File is readable ; } || { echo File is not readable ; }


[[ -w $1 ]] && { echo File is writable ; } || { echo File is not writable ; }


[[ -x $1 ]] && { echo File is executable ; } || { echo File is not executable ; }

