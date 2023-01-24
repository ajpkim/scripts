#!/bin/bash

# WEEK=$(date +"%U")
YEAR=$(date +"%Y")
WEEK_FILE="$HOME/time/2023-time-tracking.ods"
echo $WEEK_FILE
libreoffice $WEEK_FILE
