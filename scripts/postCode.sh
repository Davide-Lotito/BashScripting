## An easy script to post yout new code on GitHub
# !/bin/bash

#$1 it's the first parameter, it contains the file/* to add on the remote
#$2 it's the second parameter, it contains the message for the commit


if [ "$1" == "-help" ]; then
    echo "This script automates the process of publishing your code on GitHub"
    echo "Uses two parameters, the file/* to add and the message (put the message between quotes)"
    echo "It's created by Davide"
    exit 0;
fi

git add $1

git commit -m "$2"

git push 