#!/bin/bash

# Base office external monitor setup (2023-01)
M0="eDP-1"
M1="DP-4-2"
M1_mode="3840x2160"
M2="DP-3"
M2_mode="1920x1080"

## Turn off monitors to reset.
. ~/scripts/turn-off-monitors.sh


xrandr --output $M1 --mode $M1_mode --right-of $M0 --set audio off
# xrandr --output $M2 --mode $M2_mode --right-of $M1 --set audio off  --rotate right
xrandr --output $M2 --mode $M2_mode --right-of $M1 --set audio off --rotate right
