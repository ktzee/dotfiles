#!/usr/bin/bash

xrandr --output DP-0 --mode 2560x1440 --rate 143.96 --panning 0x0+0+0
xrandr --output HDMI-1-4 --auto --left-of DP-0
xrandr --output DP-0 --primary
wal -i "$(< "${HOME}/.cache/wal/wal")"
~/.config/i3/.fehbg
xinput set-prop 13 322 -0.8
