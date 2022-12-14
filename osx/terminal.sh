#!/bin/bash

# Updating to zsh terminal theme
open "bullet-train.terminal"

sleep 1 # Wait a bit to make sure the theme is loaded

defaults write com.apple.terminal "Default Window Settings" "bullettrain"
defaults write com.apple.terminal "Startup Window Settings" "bullettrain"
