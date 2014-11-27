#!/bin/bash
#######################################
## Usage: ~# ./block.sh <ip_address> ##
#######################################   

iptables -I INPUT -s $1 -j DROP
echo $1 "adresi engellendi."
