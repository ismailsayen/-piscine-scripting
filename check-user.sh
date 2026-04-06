#!/bin/bash

[[ ! (( $# -eq 2 )) ]] && { echo "Error: expect 2 arguments" >&2 ; exit 1 ; }

checkUser () {
    user=$( getent passwd $1 )
    [ -n "$user" ] && { echo yes ;} || { echo no ;}
}

showInfo () {
     user=$( getent passwd $1 )
    [ -n "$user" ] && { echo $user ;} || { echo "" ;}
}
 
case $1 in 

    -i)
        showInfo $2
    ;;

    -e)
        checkUser $2
    ;;
    *)
   echo "Error: unknown flag">&2 
   exit 1
esac
