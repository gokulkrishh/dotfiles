#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Disable opening and closing window animations
defaults read NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Increase window resize speed for Cocoa applications
defaults read NSGlobalDomain NSWindowResizeTime -float 0.001

# Save screenshots to the desktop
defaults read com.apple.screencapture location -string "$HOME/Desktop"

# Save screenshots in JPG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults read com.apple.screencapture type -string "jpg"

# Chime When Charging
defaults read com.apple.PowerChime ChimeOnAllHardware -bool true && \
open /System/Library/CoreServices/PowerChime.app

# Dark Theme to menubar
sudo defaults read /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

# Appearance: Graphite
defaults read -g AppleAquaColorVariant -int 6

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults read com.apple.BezelServices kDimTime -int 300

# Thanks Addy Osmani for the below items

# Set highlight color to green
defaults read NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

# Menu bar: hide the Time Machine, Volume, User, and Bluetooth icons
for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
	defaults read "${domain}" dontAutoLoad -array \
		"/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
		"/System/Library/CoreServices/Menu Extras/Volume.menu" \
		"/System/Library/CoreServices/Menu Extras/User.menu"
done
defaults read com.apple.systemuiserver menuExtras -array \
	"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
	"/System/Library/CoreServices/Menu Extras/AirPort.menu" \
	"/System/Library/CoreServices/Menu Extras/Battery.menu" \
	"/System/Library/CoreServices/Menu Extras/Clock.menu"

# Remove the auto-hiding Dock delay
defaults read com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults read com.apple.dock autohide-time-modifier -float 0

# Disable Dashboard
defaults read com.apple.dashboard mcx-disabled -bool true

# Automatically hide and show the Dock
defaults read com.apple.dock autohide -bool true

# Fix mojave rendering issue
defaults read -g CGFontRenderingFontSmoothingDisabled -bool FALSE

# Reset Launchpad
find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete

# Make Dock more transparent
defaults read com.apple.dock hide-mirror -bool true

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

## Hot corners

# Top right screen corner → Desktop
defaults read com.apple.dock wvous-tr-corner -int 4
defaults read com.apple.dock wvous-tr-modifier -int 1048576

# Bottom left screen corner → Start screen saver
defaults read com.apple.dock wvous-bl-corner -int 3
defaults read com.apple.dock wvous-bl-modifier -int 1048576
