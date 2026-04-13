#!/bin/bash

printenv PWD
printenv | awk -F'=' '{print $1}' | grep H
