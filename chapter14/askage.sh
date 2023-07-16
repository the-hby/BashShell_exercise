#!/bin/bash
read -p "Enter your name:" age
days=$[ $age * 365 ]
echo "That means you are over $days days old"
exit