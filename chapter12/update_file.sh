#!/bin/bash
location=$HOME
file_name="sentinel"
if [ -d $location ]
then 
    if [ -d $location/$file_name ]
    then
        echo "The $file_name exists"
        echo "Updating $file_name"
        date>>$location/$file_name
    else
        echo "The file doesn't exist"
        echo "Nothing to update"
    fi
else
    echo "The $location doesn't exist"
fi
