#!/usr/bin/bash

xrandr --output DP-2 --mode 2560x1440 --rate 143.96 --panning 0x0+0+0
xrandr --output HDMI-1-4 --auto --left-of DP-2
xrandr --output DP-2 --primary
wal -i "$(< "${HOME}/.cache/wal/wal")"
~/.config/i3/.fehbg
xinput set-prop 10 322 -0.9
