#!/bin/bash

sleep 10

osascript -e 'tell app "System Events" to display dialog "Did you lock your screen?" buttons {"Yes", "No"}'

[ while true ] {
    osascript -e 'tell application "iTerm" to create window with default profile'
    osascript -e 'tell application "iTerm" to create window with default profile'
    osascript -e 'tell application "iTerm" to create window with default profile'
    sleep 1
}
