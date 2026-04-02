#!/bin/bash

nohup bash -c '
    result=$(cat < facts | grep "moon")
    if [[ -n $result ]]; then
        echo $result
        echo The moon fact was found! >> output.txt
    fi
' &
