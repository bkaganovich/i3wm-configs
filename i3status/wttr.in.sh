#!/bin/bash

# Retrieve weather temperature for Hadera from wttr.in
weather=$(curl -s "wttr.in/Hadera?format=%t")

# Print temperature to the console
echo "$weather" > ~/.config/i3status/.weather.cache
