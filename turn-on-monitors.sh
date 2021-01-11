#!/bin/bash

# External monitors.
M1="DP-1-1"
M2="DP-1-2"

## Turn off monitors to reset.
. ~/scripts/turn-off-monitors.sh

## Setup external monitors.
xrandr --output $M1 --mode 1920x1080 --right-of eDP-1
xrandr --output $M2 --mode 1680x1050 --right-of DP-1-1
