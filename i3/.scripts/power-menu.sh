#!/bin/bash

# Show a simple menu with options
option=$(echo -e "Shutdown\nReboot\nLog Out" | rofi -dmenu -p "Power Options:")

case "$option" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Log\ Out)
        i3-msg exit
        ;;
    *)
        exit 0
        ;;
esac
