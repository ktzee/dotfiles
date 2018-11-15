#!/usr/bin/bash

xrandr --output DP-0 --mode 2560x1440 --rate 143.96 --panning 0x0+0+0
xrandr --output HDMI-1-4 --auto --left-of DP-0
xrandr --output DP-0 --primary
~/.config/i3/.fehbg
