#!/bin/bash

# Get the list of active users
USERS=$(who | awk '{print $1}')

# Loop through each user and print their resource usage
for USER in $USERS; do
    echo "User: $USER"
    top -b -n 1 -u $USER | awk 'NR<=7 {print}'
    echo ""
done
