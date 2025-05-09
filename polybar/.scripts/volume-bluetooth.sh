#!/bin/bash

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | head -n1)
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [[ "$mute" == "yes" ]]; then
    volume=" muted"
else
    volume="  $volume"
fi

status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ $status == "yes" ]]; then
    bluetooth_status=" "
else
    bluetooth_status=""
fi

echo "$volume$bluetooth_status"

