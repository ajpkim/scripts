#!/bin/bash

function chimes(){
    paplay $CHIME && sleep 0.25 && paplay $CHIME && sleep 0.25 && paplay $CHIME
}
export -f chimes
    
