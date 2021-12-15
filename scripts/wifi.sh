## An easy script to turnOn/Off the wifi card
# !/bin/bash


# contains the status of connection = STATUS

echo "Created by Davide"

# to check if there is internet connection
wget -q --spider http://google.com

# error codes from wget
if [ $? -eq 0 ]; then
    #echo "Online"
    STATUS=1;
else
    #echo "Offline"
    STATUS=0;
fi

if [ "$STATUS" = 1 ] ; then
    nmcli radio wifi off
    echo "the wifi was on, now I turn it off"
    STATUS=$((STATUS+1));
elif [ "$STATUS" = 0 ] ; then
    nmcli radio wifi on
    STATUS=$((STATUS-1));
    echo "wifi was off, now I turn it on"
fi
