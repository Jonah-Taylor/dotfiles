#!/bin/bash

MAXVOL=100

CURRVOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -1)

if [ "$CURRVOL" -lt "$MAXVOL" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
else
    pactl set-sink-volume @DEFAULT_SINK@ ${MAXVOL}%
fi
