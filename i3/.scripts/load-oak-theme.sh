#!/bin/bash

envfile="$HOME/.cache/i3_theme.env"

echo "export POLYBAR_PRIMARY=\"#000000\"" > "$envfile"
echo "export ROFI_THEME=\"/usr/share/rofi/themes/gruvbox-dark-soft.rasi\"" >> "$envfile"
echo "export BACKGROUND=\"/home/benjamin/Pictures/bgs/bg.jpg\"" >> "$envfile"

# Set Background
feh --bg-fill "/home/benjamin/Pictures/bgs/bg.jpg"
