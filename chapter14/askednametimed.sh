#!/bin/bash
if read -t 5 -p "Enter your name" name
then
    echo 
    echo "Hello $name, welcome to my script"
else
    echo
    echo "Sorry, no longer waiting for name"
fi