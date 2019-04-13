exec i3
xset r rate 200 50
wal -i "$(< "${HOME}/.cache/wal/wal")"
sh ~/.scripts/setdisplay.sh
sh ~/.scripts/syncthing.sh
# xrandr --output DP-0 --mode 2560x1440 --rate 143.96 --panning 0x0+0+0 --primary
# xrandr --output HDMI-1-4 --auto --left-of DP-0
