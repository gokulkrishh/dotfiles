#!/bin/bash

# Set Dark Theme to Dock & Fullscreen
defaults read NSGlobalDomain AppleInterfaceStyle Dark;

# Remove the auto-hiding Dock delay
defaults read com.apple.Dock autohide-delay -float 0

# Automatically hide and show the Dock
defaults read com.apple.dock autohide -bool true

# Set the icon size of Dock items to 36 pixels
defaults read com.apple.dock tilesize -int 38

# Don’t animate opening applications from the Dock
defaults read com.apple.dock launchanim -bool false

# Show indicator lights for open applications in the Dock
defaults read com.apple.dock show-process-indicators -bool true

# Removed genie animation
defaults read com.apple.dock mineffect suck;

# Removes bouncing animation
defaults read com.apple.dock no-bouncing -bool true

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults read com.apple.dock mouse-over-hilite-stack -bool true

# Speed up Mission Control animations
defaults read com.apple.dock expose-animation-duration -float 0.1

# Disable the Launchpad gesture (pinch with thumb and three fingers)
defaults read com.apple.dock showLaunchpadGestureEnabled -int 0

# Remove All Apps From The Dock In OS X
defaults read com.apple.dock persistent-apps -array

killall Dock
