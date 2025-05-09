#!/bin/bash
source "$HOME/.cache/i3_theme.env"

i3lock -e -i "$BACKGROUND" -F \
    --indicator --verif-text="" \
    --wrong-text="" --noinput-text="" \
    --radius 200 --ring-width 12 \
    --ringver-color=ffffffff --insidever-color=000000CC \
    --insidewrong-color=000000CC --ringwrong-color=777777 \
    --inside-color=000000CC --ring-color=ffffff --keyhl-color=285577 --bshl-color=285577


