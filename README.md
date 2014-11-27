bash-scripts
============

**Repository for little scripts.**

Script List
-----------
* screen_primary: It is setting primary screen for my netbook.
	* Parameters: *vga*, set vga output as primary screen. *else*, set laptop/notebook/netbook's screen as primary.


        > ./screen_primary vga


    	> ./screen_primary lvds


* access_log
    * Parameters: *domain_name*, grep Squid's access.log file with *domain_name*.


    	> ./access_log facebook


* hotspot/hotspot
    * Parameters: *activate*, enable your hotspot.(requires *hostapd*, *isc-dhcp-server*). *else* disable your hotspot.


    	> ./hotspot activate


* hotspot/stations:
    * Parameters: *no parameter, just run*. It will show your clients who connected to your hotspot.

* block
	* Parameters:  *ip_address*. Just add ip address as first parameter. Script will add ip address in iptables rules to block ip.


    	> ./block.sh 0.0.0.0
