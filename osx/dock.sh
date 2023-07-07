#!/bin/bash

# Read Dark Theme setting for Dock & Fullscreen
defaults read NSGlobalDomain AppleInterfaceStyle

# Read auto-hiding Dock delay
defaults read com.apple.Dock autohide-delay

# Read auto-hide status of the Dock
defaults read com.apple.dock autohide

# Read icon size of Dock items
defaults read com.apple.dock tilesize

# Read animation status for opening applications from the Dock
defaults read com.apple.dock launchanim

# Read indicator lights status for open applications in the Dock
defaults read com.apple.dock show-process-indicators

# Read minimize window animation effect
defaults read com.apple.dock mineffect

# Read bouncing animation status for application icons in the Dock
defaults read com.apple.dock no-bouncing

# Read highlight hover effect status for the grid view of a stack in the Dock
defaults read com.apple.dock mouse-over-hilite-stack

# Read Mission Control animation speed
defaults read com.apple.dock expose-animation-duration

# Read status of Launchpad gesture (pinch with thumb and three fingers)
defaults read com.apple.dock showLaunchpadGestureEnabled

# Read persistent apps in the Dock
defaults read com.apple.dock persistent-apps
