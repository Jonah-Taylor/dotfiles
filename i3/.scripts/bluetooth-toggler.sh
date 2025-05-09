#!/bin/bash

# Bluetooth device MAC address (your earbuds)
DEVICE_MAC="58:FC:C6:C0:58:11"

# Get the current Bluetooth status
status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ $status == "yes" ]]; then
    # If Bluetooth is on, turn it off
    bluetoothctl power off
else
    # If Bluetooth is off, turn it on
    bluetoothctl power on
    sleep 2  # Give it some time to initialize

    # Try to connect to the earbuds
    bluetoothctl connect "$DEVICE_MAC"
fi

