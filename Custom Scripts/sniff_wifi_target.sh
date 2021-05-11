!#/bin/sh
#Pre-requisites
bash sniff_wifi_all.sh

#Info Gathering
echo "\n-->Enter bssid of target network"
read bssid

echo "-->Enter channel of target network"
read ch

echo "-->Enter name of output file"
read filename

#Execution Command
airodump-ng --bssid $bssid --channel $ch --write $filename wlan0
