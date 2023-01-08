#!/bin/bash

# Get the current keyboard layout
layout=$(xkb-switch)

# Check the layout and print the appropriate message
if [ "$layout" == "il" ]; then
    echo "עברית" > .keyboard.cache
elif [ "$layout" == "us" ]; then
    echo "EN" > .keyboard.cache
else
    echo "$layout" > .keyboard.cache
fi
