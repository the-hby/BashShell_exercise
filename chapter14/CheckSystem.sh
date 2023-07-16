#!/bin/bash
while getopts t: opt
do 
    case "$opt" in
        t) 
           if [ $OPTARG = "IPV4" ]
           then
                pingcommand=$(which ping)
            else if [ $OPTARG = "IPV6" ]
            then
                pingcommand=$(which ping6);;
            else
                echo "Usage: -t IPV4 or -t IPV6"
                echo "Exiting script"
                exit
            fi
            ;;
        *) echo "Usage: -t IPV4 or -t IPV6"
           echo "Exiting script..."
           exit;;
    esac
    shift $[ $OPTIND - 1]
    if [ $# -eq 0]
    then
        echo
        echo "IP address(es) parameters are missing"
        echo 
        echo "Exiting script"
        exit
    fi
    for ipaddress in "$@"
    do
        echo 
        echo "Checking system at $ipaddress"
        echo
        $pingcommand -q -c 3 $ipaddress
        echo
    done
done