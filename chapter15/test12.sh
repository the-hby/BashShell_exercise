#!/bin/bash
position=./testfile.txt
exec 2> testerror.txt
if [ -e $position ]
then
    exec 0< testfile.txt
    count=1
    while read line 
    do 
        echo "Line #$count: $line"
        count=$[ $count + 1 ]
    done
else
    echo "the testfile.txt doesn't exist" >&2
fi
        