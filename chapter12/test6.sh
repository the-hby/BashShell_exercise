#!/bin/bash
my_variable1="Full"
my_variable2=""
if test $my_variable1
then
    echo "The my_variable1 has a content and return true"
    echo "The content is $my_variable1"
else
    echo "The my_variable1 is empty"
fi
if test $my_variable2
then 
    echo "The my_variable2 has a content and return true"
    echo "The content is $my_variable2"
else
    echo "The my_variable2 is empty"
fi