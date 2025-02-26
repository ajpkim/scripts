#!/bin/bash

# Base NH external monitor setup (2024-06)
M0="eDP-1"
M1="DP-1-1"
M2="DP-4"

M1_MODE="3840x2160"
M2_MODE="3840x2160"

## Turn off monitors to reset.
. ~/scripts/turn-off-monitors.sh

xrandr --output $M1  --mode $M1_MODE --left-of $M0 --set audio off
xrandr --output $M2 --mode $M2_MODE --left-of $M1 --set audio off --rotate left

feh --bg-scale $HOME/pictures/bg-img/wallpaper.jpg
