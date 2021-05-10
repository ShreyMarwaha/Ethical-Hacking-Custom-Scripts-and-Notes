#!/bin/sh
echo "<-----Disable Monitor Mode----->"
ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode managed
ifconfig wlan0 up
iwconfig
service NetworkManager start
echo "--->> Check if Mode:Monitor should be there."