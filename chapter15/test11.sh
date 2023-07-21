#!/bin/bash
exec 2> testerror.txt
echo "This is the start of the script"
echo "now redirecting all output to another location"
exac 1> testout.txt
echo "This output should go to the testout file"
echo "but this should go to the testerror file" >&2
