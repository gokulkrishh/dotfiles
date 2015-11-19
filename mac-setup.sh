
##Utility functions

#Custom Utility functions
custom_echo() {
  local fmt="$1"; shift

  printf "\n$fmt\n" "$@"
}

#Welcome message
custom_echo "Your OS X development machine is just a few steps away"
custom_echo "Author: https://github.com/gokulkrish"

# Set up git global values
custom_echo '\e[1;34m%-6s\e[m' "==> Setting git global configuration <=="
cp gitignore ~/.gitignore_global
git config --global core.excludesfile '~/.gitignore_global'
git config --global user.email "krishnangokul9@gmail.com"
git config --global user.name "gokulkrishh"

#Install Oh My Zsh
custom_echo '\e[1;34m%-6s\e[m' "==> Installating Oh My Zsh <=="
curl -L http://install.ohmyz.sh | sh

#Copy zshrc config
custom_echo '\e[1;34m%-6s\e[m'  "==> Copying shortcuts <=="
custom_echo '\e[1;34m%-6s\e[m'  "==> Check your .zshrc file for more details <=="
cp zshrc ~/.zshrc

#Install Homebrew
custom_echo '\e[1;34m%-6s\e[m'  "==> Installing Homebrew <=="
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install node
custom_echo '\e[1;34m%-6s\e[m'  "==> Installing Node.js <=="
brew install node

#Set up npm for global install without sudo
custom_echo '\e[1;34m%-6s\e[m'  "==> Set up npm for global install without sudo <=="
cp npmrc ~/.npmrc
mkdir "${HOME}/.npm-packages"

#Install commonly used npm and generator-smacss etc.
custom_echo '\e[1;34m%-6s\e[m'  "==> Installing commonly used npm modules & generators <=="
npm install -g gulp grunt-cli jshint yo generator-mocha@0.1.0 generator-smacss
