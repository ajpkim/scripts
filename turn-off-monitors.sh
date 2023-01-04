#!/bin/bash

######################################################################
## Turn off all the displays that are not the main display, which is
## read from an env variable.
######################################################################

# Extract monitors from xrandr output
MONITORS=$(xrandr --listmonitors | awk 'NR!=1, NF>1 {printf "%s ", $NF}')

# Create array with monitor names
IFS=' ' read -ra mon_arr <<< $MONITORS

# Loop and turn off monitors that aren't the main laptop display
for monitor in ${mon_arr[@]};
do
    if [ $monitor != $MAIN_DISPLAY ]; then
	xrandr --output $monitor --off
    fi
done
