#!/bin/bash
for var1 in 1 2 3 4 5 6 7 8
do 
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration number:$var1"
done