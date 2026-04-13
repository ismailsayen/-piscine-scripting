#!/bin/bash

printenv PWD
printenv|awk -F'=' '{print $2}' | grep H
