#!/bin/bash

# External monitors 2021-11
M0="eDP1"
M1="DP2-1"
M1_mode="3840x2160"
M2="HDMI1"
M2_mode="3840x2160"

## Turn off monitors to reset.
. ~/scripts/turn-off-monitors.sh

## Setup external monitors.
xrandr --output $M1 --mode $M1_mode --right-of $M0 --set audio off
xrandr --output $M2 --mode $M2_mode --right-of $M1 --set audio off  --rotate right
