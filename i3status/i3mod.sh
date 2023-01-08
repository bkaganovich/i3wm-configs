#!/bin/bash

i3status --config $HOME/.config/i3status/config | while :
do
	read line
   
    watch -n 1 $HOME/.config/i3status/keyboard.sh &

    # Get the current keyboard layout
    #layout=$(xkb-switch)

    # Check the layout and print the appropriate message
    #if [ "$layout" == "il" ]; then
    #    echo "il" > .$HOME/.config/i3status/keyboard.cache
    #elif [ "$layout" == "us" ]; then
    #    echo "us" > $HOME/.config/i3status/.keyboard.cache
    #else
    #    echo "$layout" > $HOME/.config/i3status/.keyboard.cache
    #fi



	echo "$(curl -s ifconfig.me)" > $HOME/.config/i3status/.ip.cache

	echo $line
done

