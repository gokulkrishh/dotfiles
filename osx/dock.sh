#!/bin/bash

# Set Dark Theme to Dock & Fullscreen
defaults write NSGlobalDomain AppleInterfaceStyle Dark;

# Remove the auto-hiding Dock delay
defaults write com.apple.Dock autohide-delay -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 38

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Removed genie animation
defaults write com.apple.dock mineffect suck; killall Dock

# Removes bouncing animation
defaults write com.apple.dock no-bouncing -bool true

killall Dock
