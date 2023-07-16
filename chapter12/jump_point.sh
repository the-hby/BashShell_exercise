#!/bin/bash
jump_directory=/home/hby
if [ -d $jump_directory ]
then
    echo "The $jump_directory directory  exists"
    cd $jump_directory
    ls
else
    echo "the $jump_directory directory does't exist"
fi
