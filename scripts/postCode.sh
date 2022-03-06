## An easy script to post yout new code on GitHub
# !/bin/bash


if [ "$1" == "-help" ]; then
    echo "This script automates the process of publishing your code on GitHub"
    echo "Uses two parameters, the file/* to add and the message (put the message between quotes)"
    echo "It's created by Davide"
    exit 0;
fi

echo "Enter your message"
read message

git pull > temp.txt
temp=`cat temp.txt`
rm temp.txt

if [ "$temp" != "Già aggiornato." ]; then
    echo "Branch not updated with respect to the master, to avoid problems, the script ends"
    echo "Message from GitHub: "$temp
    exit 1;
fi

git add *

git commit -m "${message}"

git push