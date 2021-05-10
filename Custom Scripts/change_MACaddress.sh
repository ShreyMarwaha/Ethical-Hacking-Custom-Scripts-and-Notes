#!/bin/sh
echo "<----- Change MAC Address ----->"
ifconfig wlan0 down
echo "Enter new MAC Address. (make sure it starts with 00:..."
read addr
ifconfig wlan0 hw ether $addr
ifconfig wlan0 up
ifconfig
echo "--->> Check your MAC address."