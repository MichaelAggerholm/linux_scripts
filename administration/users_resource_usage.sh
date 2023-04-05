#!/bin/bash

# Få liste over aktive brugere
USERS=$(who | awk '{print $1}')

# Skriv ressourceforbrug for hver bruger
for USER in $USERS; do
    echo "User: $USER"
    top -b -n 1 -u $USER | awk 'NR<=7 {print}'
    echo ""
done
