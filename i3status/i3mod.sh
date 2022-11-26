#!/bin/bash

i3status --config $HOME/.config/i3status/config | while :
do
	read line
	check_kbd() {
		xset -q | grep -A 0 'LED' | cut -c59-67
	}

	lang="$(check_kbd)"

	if [ $lang -gt 0 ]; then
		echo "HE" > $HOME/.config/i3status/.layout.cache
	else
		echo "EN" > $HOME/.config/i3status/.layout.cache
	fi

	echo "$(curl -s ifconfig.me)" > $HOME/.config/i3status/.ip.cache

	echo $line
done

