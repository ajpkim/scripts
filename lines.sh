#!/bin/bash

if [ -f "$1" ]; then
    cat "$1" | wc -l
fi
if [ -d "$1" ]; then
    ls "$1" | wc -l
fi
