#!/usr/bin/bash

xrandr --output DP-2 --mode 2560x1440 --rate 143.96 --panning 0x0+0+0
xrandr --output HDMI-0 --auto --left-of DP-2
xrandr --output DP-2 --primary
wal -i "$(< "${HOME}/.cache/wal/wal")"
# ~/.fehbg
xinput set-prop 14 308 -0.7
