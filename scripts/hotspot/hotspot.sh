#!/bin/bash

if [[ $1 = "activate" ]]; then
	service network-manager stop
	service hostapd stop
	service isc-dhcp-server stop
	sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
	iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
	iptables -A FORWARD -i eth0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
	iptables -A FORWARD -i wlan0 -o eth0 -j ACCEPT
	sh -c "iptables-save > /etc/iptables.ipv4.nat"
	cp /etc/network/interfaces.ac /etc/network/interfaces
	ifconfig wlan0 down
	ifconfig wlan0 192.168.42.1
	ifconfig wlan0 up
	service network-manager start
	service hostapd start
	service isc-dhcp-server start
	echo "[ BAŞARILI ] 192.168.42.x ağı üzerinden IP dağıtıyorsunuz."
else
	service network-manager stop
	service hostapd stop
	service isc-dhcp-server stop
	cp /etc/network/interfaces.kapat /etc/network/interfaces
	service network-manager start
	echo "[ BAŞARILI ] AP kapatıldı ve wlan0 aygıtı kullanıma açıldı."
fi