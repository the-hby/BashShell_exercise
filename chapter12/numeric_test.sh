#!/bin/bash
value1=10
value2=20
if [ $value1 -gt  $value2 ]
then 
    echo "The test value1 is greater than value2"
fi
if [ $value1 -eq $value2 ]
then 
    echo "The test value1 is equal to value2"
else
    echo "the test value1 and test2 are different"
fi
