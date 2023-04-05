#!/bin/bash

# Få liste over aktive brugere
USERS=$(who | awk '{print $1}')

# Skriv ressourceforbrug for hver bruger
for USER in $USERS; do
    echo "User: $USER"
    top -b -n 1 -u $USER | awk 'NR<=7 {print}'
    echo ""
done

#
#
#
#
##!/bin/bash
#
## Get the list of active users
#USERS=$(who | awk '{print $1}')
#
## Clear the screen
#clear
#
## Loop through each user and print their resource usage
#for USER in $USERS; do
#    echo "User: $USER"
#    top -b -n 1 -u $USER | awk 'NR<=7 {print}'
#    echo ""
#
#    # Get the memory and swap usage in percentage
#    MEM_USAGE=$(free -m | awk '/^Mem:/{print int($3/$2 * 100.0)}')
#    SWAP_USAGE=$(free -m | awk '/^Swap:/{print int($3/$2 * 100.0)}')
#
#    # Print the memory and swap usage
#    echo "Memory Usage: $MEM_USAGE%"
#    echo "Swap Usage: $SWAP_USAGE%"
#    echo ""
#done
