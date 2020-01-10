#!/usr/bin/bash

wall="$HOME/.config/wallpapers/games/poe/kitava.png"
scheme="$HOME/.config/wallpapers/games/poe/kitava_h1fey.png"
xrandr --output DP-2 --primary
xrandr --output DP-2 --mode 2560x1440 --rate 143.96 --panning 0x0+0+0
xrandr --output HDMI-0 --mode 1920x1080 --left-of DP-2 --panning 0x0+0+0

wal -i $scheme -n
feh --bg-scale $wall
# wal -i "$(< "${HOME}/.cache/wal/wal")"
# xinput set-prop 14 308 -0.7
