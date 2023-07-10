#!/bin/bash

YEAR=$(date +"%Y")
ISO_WEEK=$(date +%V)
WEEK_FILE="$HOME/data/time/$YEAR-w$ISO_WEEK.ods"
TEMPLATE="$HOME/data/time/time-template.ods"

if [ ! -f "$WEEK_FILE" ]; then
    cp "$TEMPLATE" "$WEEK_FILE"
fi

libreoffice $WEEK_FILE
