## An easy script to turnOn/Off the wifi connection with ifconfig
# !/bin/bash

# specify the name of your network card (eth0, eth1, wlan0, etc ...)
IFACE="wlo1"

# contains the status of connection = STATUS

echo "Created by Davide"

# to check if there is internet connection
wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    #echo "Online"
    STATUS=1;
else
    #echo "Offline"
    STATUS=0;
fi

if [ "$STATUS" = 0 ] ; then
    sudo ifconfig "$IFACE" up
    echo "wifi on"
    STATUS=$((STATUS+1));
elif [ "$STATUS" = 1 ] ; then
    sudo ifconfig "$IFACE" down
    STATUS=$((STATUS-1));
    echo "wifi off"
fi
