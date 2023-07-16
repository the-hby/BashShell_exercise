#!/bin/bash
pwfile=/etc/shadow
echo "Checking if you can read $pwfile"
if [ -f $pwfile ]
then 
    if [ -r $pwfile ]
    then
        echo "Displaying end of the file"
    else
        echo "Sorry,read access to $pwfile is denied."
    fi 
else
    echo "Sorry,read access to $pwfile is denied"
fi