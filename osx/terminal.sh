#!/bin/bash

# Updating to custom dracula terminal theme
open "Dracula.terminal"

sleep 1 # Wait a bit to make sure the theme is loaded

defaults write com.apple.terminal "Default Window Settings" "Dracula"
defaults write com.apple.terminal "Startup Window Settings" "Dracula"
