
# Updating to pro theme
open "~/dotfiles/.bash_profile.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded

defaults write com.apple.terminal "Default Window Settings" -string "Pro"
defaults write com.apple.terminal "Startup Window Settings" -string "Pro"
