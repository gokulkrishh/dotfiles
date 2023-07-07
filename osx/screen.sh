#!/bin/bash

# Read opening and closing window animations status
defaults read NSGlobalDomain NSAutomaticWindowAnimationsEnabled

# Read window resize speed for Cocoa applications
defaults read NSGlobalDomain NSWindowResizeTime

# Read screenshots save location
defaults read com.apple.screencapture location

# Read screenshots save format
defaults read com.apple.screencapture type

# Read Chime When Charging status
defaults read com.apple.PowerChime ChimeOnAllHardware

# Read Dark Theme to menubar setting
sudo defaults read /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey

# Read Appearance setting: Graphite
defaults read -g AppleAquaColorVariant

# Read keyboard illumination time setting
defaults read com.apple.BezelServices kDimTime

# Read highlight color setting
defaults read NSGlobalDomain AppleHighlightColor

# Read menu bar items auto-load settings
for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
	defaults read "${domain}" dontAutoLoad
done
defaults read com.apple.systemuiserver menuExtras

# Read the auto-hiding Dock delay
defaults read com.apple.dock autohide-delay

# Read the Dock auto-hide animation modifier
defaults read com.apple.dock autohide-time-modifier

# Read Dashboard status
defaults read com.apple.dashboard mcx-disabled

# Read Dock auto-hide status
defaults read com.apple.dock autohide

# Read Mojave rendering issue fix setting
defaults read -g CGFontRenderingFontSmoothingDisabled

# Read Launchpad reset status
find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1

# Read Dock transparency setting
defaults read com.apple.dock hide-mirror

# Read Notification Center status
launchctl list | grep com.apple.notificationcenterui

# Read Hot corners settings
defaults read com.apple.dock wvous-tr-corner
defaults read com.apple.dock wvous-tr-modifier
defaults read com.apple.dock wvous-bl-corner
defaults read com.apple.dock wvous-bl-modifier
