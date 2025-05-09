#!/bin/sh

# Wait for the keyboard to be ready
while ! ls /dev/input/by-id/ | grep -q "kbd"; do
    sleep 0.1
done

i3lock -e -i ~/Pictures/bgs/bg.jpg -F --indicator --verif-text="" --wrong-text="" --noinput-text="" --radius 200 --ring-width 12 --ringver-color=00ff0000 --insidever-color=000000CC --insidewrong-color=000000CC --ringwrong-color=772222 --inside-color=000000CC --ring-color=ffffff --keyhl-color=227722 --bshl-color=227722


