## An easy script to get the public IP addres of a website
#!/bin/bash

#$1 it's the website url

nslookup $1 | grep Address: > temp.txt

filename='temp.txt'
n=1
while read line; do
if [ "$n" == 2 ] ; then
    echo "The IP address of [ $1 ] is: ${line:10}"
fi
n=$((n+1))
done < $filename

rm temp.txt