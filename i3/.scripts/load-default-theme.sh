#!/bin/bash

envfile="$HOME/.cache/i3_theme.env"

echo "export POLYBAR_PRIMARY=\"#FFFFFF\"" > "$envfile"
echo "export ROFI_THEME=\"/usr/share/rofi/themes/material.rasi\"" >> "$envfile"
echo "export BACKGROUND=\"/home/benjamin/Pictures/bgs/black.jpg\"" >> "$envfile"

# Set Background
feh --bg-fill "/home/benjamin/Pictures/bgs/black.jpg"
