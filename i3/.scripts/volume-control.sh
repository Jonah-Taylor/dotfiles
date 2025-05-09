#!/bin/sh

MAX_VOLUME=100
CHANGE=$1  # The first argument passed to the script (+5% or -5%)

if [ -z "$CHANGE" ]; then
    echo "Usage: volume_control.sh [+5%|-5%]"
    exit 1
fi

# Change the volume
pactl set-sink-volume @DEFAULT_SINK@ "$CHANGE"

# Get the current volume level
VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o "[0-9]\+%" | head -1 | tr -d "%")

# Cap the volume if it exceeds the max
if [ "$VOLUME" -gt "$MAX_VOLUME" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ "$MAX_VOLUME%"
elif [ "$VOLUME" -lt "$MIN_VOLUME" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ "$MIN_VOLUME%"
fi
