#!/bin/bash

percentage=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$status" == "Charging" ]; then
    echo " $percentage%"
elif [ "$status" == "Discharging" ]; then
    if [ "$percentage" -lt 15 ]; then
	    echo "  $percentage%"
    elif [ "$percentage" -lt 85 ]; then
	    echo "  $percentage%"
    else
            echo " $percentage%"
    fi
else
	echo " 100%"
fi

