## An easy script to get the public IP addres of a website
#!/bin/bash

#$1 it's the website url

if [ "$1" == "-help" ] || [ "$1" == "--help" ]; then
    echo "This script get the public IP addres of a website"
    echo "Uses only one parameter, the url of the website"
    echo "It's created by Davide"
    exit 0;
fi

if [ "$#" != 1 ]; then
    echo "You have to provide the website url"
    exit 1;
fi

nslookup $1 | grep Address: > temp.txt

filename='temp.txt'
n=1
while read line; do
if [ "$n" == 2 ] ; then
    echo "The IP address of [ $1 ] is: ${line:9}"
fi
n=$((n+1))
done < $filename

rm temp.txt