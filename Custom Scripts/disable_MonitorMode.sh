#!/bin/sh
echo "<-----Disable Monitor Mode----->"
ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode managed
ifconfig wlan0 up
service NetworkManager start
iwconfig
echo "--->> Check if Mode:Managed should be there."