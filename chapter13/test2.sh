#!/bin/bash
for file in /home/hby/BashShell_exercise/*
do
    if [ -d $file ]
    then 
        echo "The $file is a directory"
    elif [ -f $file ]
    then 
        echo "The $file is a file"
    else
        echo "The $file doesn't exist"
    fi
done