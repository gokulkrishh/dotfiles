#!/bin/bash

# Read the sound effects on boot status
sudo nvram -p | grep SystemAudioVolume

# Read the default save location setting
defaults read NSGlobalDomain NSDocumentSaveNewDocumentsToCloud

# Read the printer app auto-quit setting
defaults read com.apple.print.PrintingPrefs "Quit When Finished"

# Read the crash reporter setting
defaults read com.apple.CrashReporter DialogType

# Read the scroll gesture with Ctrl modifier key for zoom setting
defaults read com.apple.universalaccess closeViewScrollWheelToggle
defaults read com.apple.universalaccess HIDScrollZoomModifierMask

# Read the keyboard repeat rate setting
defaults read NSGlobalDomain KeyRepeat
defaults read NSGlobalDomain InitialKeyRepeat

# Read the iTunes keyboard media keys setting
#launchctl list | grep com.apple.rcd.plist

# Read the Finder quitting via Cmd+Q setting
defaults read com.apple.finder QuitMenuItem

# Read the Finder path bar setting
defaults read com.apple.finder ShowPathbar

# Read the Finder status bar setting
defaults read com.apple.finder ShowStatusBar

# Read the Finder filename extensions setting
defaults read NSGlobalDomain AppleShowAllExtensions

# Read the Finder default search scope setting
defaults read com.apple.finder FXDefaultSearchScope

# Read the Finder folders on top when sorting by name setting
defaults read com.apple.finder _FXSortFoldersFirst

# Read the Finder creation of .DS_Store files on network or USB volumes setting
defaults read com.apple.desktopservices DSDontreadNetworkStores
defaults read com.apple.desktopservices DSDontreadUSBStores

# Read the Mac App Store automatic update check setting
defaults read com.apple.SoftwareUpdate AutomaticCheckEnabled

# Read the Mac App Store download newly available updates setting
defaults read com.apple.SoftwareUpdate AutomaticDownload

# Read the Mac App Store install system data files & security updates setting
defaults read com.apple.SoftwareUpdate CriticalUpdateInstall

# Read the Mac App Store app auto-update setting
defaults read com.apple.commerce AutoUpdate

# Read the Mac App Store reboot machine on macOS updates setting
defaults read com.apple.commerce AutoUpdateRestartRequired

# Read the Photos automatic opening when devices are plugged in setting
defaults read -currentHost com.apple.ImageCapture disableHotPlug
