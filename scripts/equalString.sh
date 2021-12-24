## An easy script to check if two strings are equal or not
#!/bin/bash

if [ "$1" == "-help" ]; then
    echo "This script turnOn/Off the wifi card"
    echo "It's created by Davide"
    exit 0;
fi

# $1 it's the first parameter on the command line
# $2 it's the second parameter on the command line

if [ "$1" == "$2" ]; then
    echo "Both Strings are Equal."
else
    echo "Both Strings are not Equal."
fi