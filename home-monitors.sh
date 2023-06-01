#!/bin/bash

# Base office external monitor setup (2023-06)
M0="eDP-1"
M1="DP-3"
M2="DP-4-1"

M1_MODE="3840x2160"
M2_MODE="2560x1440"

## Turn off monitors to reset.
. ~/scripts/turn-off-monitors.sh

xrandr --output $M1  --mode $M1_MODE --left-of $M0 --set audio off
xrandr --output $M2 --mode $M2_MODE --left-of $M1 --set audio off --rotate left

feh --bg-scale $HOME/Pictures/bg-img/wallpaper.jpg
