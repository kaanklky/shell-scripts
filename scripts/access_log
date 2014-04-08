#!/bin/bash

if [[ $1 != "" ]]; then
	tail -f /var/log/squid/access.log | grep $1 --color=always
else
	tail -f /var/log/squid/access.log
fi
