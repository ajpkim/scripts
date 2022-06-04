#! /usr/bin/bash

# Weather using wttr.in
weather () {
    if [ $1 == "nh" ]; then
	curl wttr.in/franconia-new-hampshire
	return
    fi
    curl wttr.in/$1
}
export -f weather
