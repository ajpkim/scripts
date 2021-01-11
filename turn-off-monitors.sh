#!/bin/bash
# Extract monitors from xrandr output
MONITORS=$(xrandr --listmonitors | awk 'NR!=1, NF>1 {printf "%s ", $NF}')
# Create array with monitor names
IFS=' ' read -ra mon_arr <<< $MONITORS
# Loop and turn off monitors that aren't the main laptop display
for monitor in ${mon_arr[@]};
do
    if [ $monitor != "eDP-1" ]; then
	xrandr --output $monitor --off
    fi
done
