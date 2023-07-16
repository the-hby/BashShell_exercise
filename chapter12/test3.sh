#!/bin/bash
testuser=NoSuchUser
if grep $testuser /etc/passwd
then 
    echo "The script files in the home directory of $testuser are:"
    ls /home/$testuser/*.sh
    echo
else
    echo "The user $testuser does not exist on this system."
    echo
fi
echo "We are outside of the if statement"

