#! /bin/bash

# Alternative (longer) to default beep that isn't working.
export BEEPS=/usr/share/sounds/sound-icons/start
beeps() {
    paplay $BEEPS
    }
# Pomodoro timer alert function. Requires "$BEEPS" var to be set to an alert sound.
pom () {
    # Check for valid minutes input.
    if [ $1 ] && ! [[ $1 =~ ^[0-9]+$ ]]; then
	echo "\"$1\" is not a valid pom session length.";
	return
    fi
    startTime=$(date +"%T");
    # Default durations are 25min work session and 5min break.
    pomMins=${1:-25};
    breakMins=${2:-5};
    echo "$startTime: Starting $pomMins min POM with $breakMins minute break.";
    for (( minute=0; minute<$pomMins; minute++ ))
    do
	if [ $minute != 0 ] && (( $minute%5==0 ));
	then
	    echo "$minute min"
	fi
	sleep 60
    done
    
    zenity --info --title "Poms Poms Poms" --text '\n\n\n\n\n<span foreground="sky blue" font="88">POM DONE.</span><span font="32">\n\n<i>Take a break!</i></span>' --width 1000 --height 450 --display=:0.0 &
    while [ -d /proc/$! ];do paplay $BEEPS;done
    # Exit if break set to 0 min.
    if (( $breakMins==0 )); then
	return# Weather using wttr.in
weather () {
    if [ $1 == "nh" ]; then	
	curl wttr.in/franconia-new-hampshire
	return
    fi
    curl wttr.in/$1
}
export -f weather
    fi
    # Prompt break. Timer begins when notification awknowledge.
    zenity --info --text '<span foreground="light green" font="88">Start break.</span>' --width 400 --height 200
    breakSeconds=$(($breakMins * 60));
    sleep $breakSeconds;

    zenity --info --text '\n\n\n\n\n<span foreground="red" font="88">BREAK OVER.</span><span font="32">\n\n<i>Do something!</i></span>' --width 1000 --height 450 --display=:0.0 &
    while [ -d /proc/$! ];do paplay $BEEPS;done
}
export -f pom
