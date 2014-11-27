#!/bin/bash

iptables -I INPUT -s $1 -j DROP
echo $1 "adresi engellendi."
