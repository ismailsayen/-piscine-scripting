#!/bin/bash

echo $PWD

printenv|awk -F'=' '{print $2}' | grep H