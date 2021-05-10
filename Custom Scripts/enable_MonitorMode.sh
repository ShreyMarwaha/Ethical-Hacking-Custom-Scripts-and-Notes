#!/bin/sh
echo "<-----Enable Monitor Mode----->"
ifconfig wlan0 down
airmon-ng check kill
echo "Press any key to continue."
read key 
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig
echo "--->> Check if Mode:Monitor should be there."