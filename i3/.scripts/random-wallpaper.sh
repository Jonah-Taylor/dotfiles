#!/bin/bash
# Folder where your wallpapers are
wallpaper_dir="$HOME/Pictures/bgs"

# Pick a random file
wallpaper=$(find "$wallpaper_dir" -type f | shuf -n 1)

# Set it
feh --bg-fill "$wallpaper"
