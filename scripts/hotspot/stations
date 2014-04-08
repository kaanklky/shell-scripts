#!/bin/bash

clear
for (( ; ; )); do
	echo "         Connected Devices"
	echo ""
	echo "  Type |    MAC Address  | Interface"
	iw dev wlan0 station dump | grep Station
	sleep 1
	clear
done