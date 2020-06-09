#!/bin/bash

# Set Dark Theme to Dock & Fullscreen
defaults write NSGlobalDomain AppleInterfaceStyle Dark;

# Remove the auto-hiding Dock delay
defaults write com.apple.Dock autohide-delay -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool false

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 50

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Removed genie animation
defaults write com.apple.dock mineffect suck;

# Removes bouncing animation
defaults write com.apple.dock no-bouncing -bool true

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Disable the Launchpad gesture (pinch with thumb and three fingers)
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# Remove All Apps From The Dock In OS X
defaults write com.apple.dock persistent-apps -array

killall Dock
