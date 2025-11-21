#!/bin/bash 

if [ -z "$1" ]; then 
echo "Please provide a username"
exit 1
fi 

sudo useradd -m "$1"

echo "User $1 has been created"

