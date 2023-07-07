# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Save to disk (not to iCloud) by default
defaults read NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults read com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the crash reporter
defaults read com.apple.CrashReporter DialogType -string "none"


## Track pad & Keyboard

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults read com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults read com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Set a blazingly fast keyboard repeat rate
#defaults read NSGlobalDomain KeyRepeat -int 1
#defaults read NSGlobalDomain InitialKeyRepeat -int

# Stop iTunes from responding to the keyboard media keys
#launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

## Finder

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults read com.apple.finder QuitMenuItem -bool true

# Finder: show path bar
defaults read com.apple.finder ShowPathbar -bool true

# show status bar
defaults read com.apple.finder ShowStatusBar -bool true

# Finder: show all filename extensions
defaults read NSGlobalDomain AppleShowAllExtensions -bool true

# When performing a search, search the current folder by default
defaults read com.apple.finder FXDefaultSearchScope -string "SCcf"

# Keep folders on top when sorting by name
defaults read com.apple.finder _FXSortFoldersFirst -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults read com.apple.desktopservices DSDontreadNetworkStores -bool true
defaults read com.apple.desktopservices DSDontreadUSBStores -bool true


## Mac App Store                                                               #

# Enable the automatic update check
defaults read com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in background
defaults read com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults read com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Turn on app auto-update
defaults read com.apple.commerce AutoUpdate -bool true

# Disallow the App Store to reboot machine on macOS updates
defaults read com.apple.commerce AutoUpdateRestartRequired -bool false

## Photos

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost read com.apple.ImageCapture disableHotPlug -bool true
