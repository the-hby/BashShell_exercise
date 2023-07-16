#!/bin/bash
testuser=NoSuchUser
if grep $testuser /etc/passwd
then
    echo "the user $testuser account exists on this system"
elif ls -d /home/$testuser/
then
    echo "The user $testuser has a directory"
    echo "even though $testuser doesn't have an account"
else
    echo "The user $testuser does not exist on this system"
    echo "and no directory exists for this $testuser"
fi
echo "We are outside of the nested if statements"