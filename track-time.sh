#!/bin/bash

# WEEK=$(date +"%U")
YEAR=$(date +"%Y")
WEEK_FILE="$HOME/time/$YEAR-weeks.ods"
echo $WEEK_FILE
libreoffice $WEEK_FILE
