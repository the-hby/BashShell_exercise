#!/bin/bash
object_name=$HOME
echo "The object being checked: $object_name"
if [ -e $object_name ]
then
    echo "The object,$object_name,does exists"
    if [ -f $object_name ]
    then
        echo "The $object_name is a file"
    fi
    if [ -d $object_name ]
    then 
        echo "The $object_name is a directory"
    fi
fi