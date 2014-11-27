#!/bin/bash

if [[ $1 = "vga" ]]; then
	xrandr --output VGA1 --primary
else
	xrandr --output LVDS1 --primary
fi