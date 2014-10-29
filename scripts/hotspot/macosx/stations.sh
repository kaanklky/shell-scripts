#!/bin/bash

echo "\n\n"
echo "###############################################################"
echo "######### Developed by Kaan Kölköy via Sublime Text 3 #########"
echo "#########            version 0.1.2.3.4.5              #########"
echo "############################################################### \n\n"
ifconfig | grep bridge
echo "\nType interface name which you set up as bridge: \c"
read interface

clear
for (( ; ; )); do
	echo "                     Connected Devices"
	echo "?   IP Address        MAC Address       Interface "
	arp -i $interface -a
	sleep 1
	clear
done