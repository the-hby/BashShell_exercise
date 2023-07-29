#!/bin/bash
exec 6<&0
exec 4>&2
exec 2>>error.txt
count=1
if [ -e testfile.txt ]
then
    exec 0< testfile.txt
    count=1
    while read line
    do 
        echo "Line #$count: $line"
        count=$[ $count+1 ]
    done
else
    echo "testfile.txt doesn't exist" >&2
fi
exec 2>&4
exec 0<&6
read -p "Are you done now" answer
case $answer in
Y|y) echo "Goodbye";;
N|n) echo "Sorry this is the end";;
esac
