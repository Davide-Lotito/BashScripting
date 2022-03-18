## An easy script to check if two strings are equal
## Very useful to check the hash when you download big files
#!/bin/bash

if [ "$1" == "-help" ] || [ "$1" == "--help" ]; then
    echo "This script check if two strings are equal"
    echo "Uses two parameters, the two string to compare"
    echo "It's created by Davide"
    exit 0;
fi

if [ "$#" != 2 ]; then
    echo "You have to provide two parameters, the two strings that you want to match"
    exit 1;
fi

# $1 it's the first parameter on the command line
# $2 it's the second parameter on the command line

if [ "$1" == "$2" ]; then
    echo "Both strings are Equal."
else
    echo "Strings are not Equal."
fi