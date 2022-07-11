#!/bin/bash

echo "Started: $(date +%T)"
date1=$((`date +%s` + $1));
while [ "$date1" -ge `date +%s` ]; do
    echo -ne "   $(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
    sleep 0.5
done
~/scripts/chimes.sh
echo ""
