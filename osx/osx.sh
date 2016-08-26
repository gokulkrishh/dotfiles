# cask for brew
brew tap phinze/cask
brew install brew-cask

# cask versions
brew tap caskroom/versions

# hyperterm
brew cask install hyperterm

# hyperterm preferences
ln -sfn $PWD/hyperterm/.hyperterm.js ~/.hyperterm.js

# atom editor
brew cask install atom

# all the browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install opera
