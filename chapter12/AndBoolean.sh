#!/bin/bash
if [ -d $HOME ] && [ -w $HOME/newfile]
then 
    echo "The file exists and you can write it."
else
    echo "You cannot write to the file."
fi