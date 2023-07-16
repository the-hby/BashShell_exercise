#!/bin/bash
file="states.txt"
if [ -e ./$file ]
then 
    for states in $(cat ./$file)
    do
        echo "Visit beautiful $states"
    done
else
    echo "The file doesn't exist in this directory"
fi
