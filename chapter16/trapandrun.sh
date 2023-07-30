#!/bin/bash
while getopts S: opt
do 
    case "$opt" in
        S) signalList=""
            for arg in $OPTAG
            do
                case $arg in 
                    1) signalList=$signalList"SIGHUP";;
                    2) signalList=$signalList"SIGINT";;
                    20) signalList=$signalList"SIGTSTP";;
                    *) echo "Only signals 1 2 and/or 20 are allowed."
                   echo "Exiting script"
                   exit;;
                esac
            done;;
        *) echo 'Usage: -S"Signal(s)" script-to-return-name'
           echo 'Exiting script'
           exit;;
    esac
done
shift $[ $OPTIND -1 ]
if [ -z $@ ]
then 
    echo 
    echo 'Error: Script name not provided'
    echo 'Usage: -S "Signal(s)" script-to-run-name'
    echo 'Exiting script'
    exit
elif [ -O $@ ] && [ -x $@ ]
then
    scriptrun=$@
    scriptOutput="$@.out"
    exit
else
    echo 
    echo "Error: $@ is either not owned by you or not executable"
    echo "Exiting"
    exit
fi
trap "" $signalList
source $scriptList > $scriptOutput &
trap -- $signalList