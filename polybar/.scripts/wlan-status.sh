#!/bin/bash

status=$(nmcli -t -f active,ssid dev wifi | grep "^yes" | cut -d: -f2)

if [ -n "$status" ]; then
    signal_strength=$(nmcli -t -f IN-USE,SIGNAL dev wifi | grep "^*" | cut -d: -f2)
    rounded_signal=$(( (signal_strength + 5) / 10 * 10 ))
    echo "  $rounded_signal%"
else
    echo "󰤯 No Wi-Fi"
fi

