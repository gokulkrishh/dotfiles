
#Author

echo "Gokul's Dotfiles"
echo ""

echo "Set up your OS X for development..."
echo ""

echo "Repo: https://github.com/gokulkrishh/dotfiles"
echo "Author: https://github.com/gokulkrishh"
echo "Twitter: https://twitter.com/gokul_i"
echo ""

#Install Oh My Zsh

curl -L http://install.ohmyz.sh | sh

cp ohmyzsh/zshrc ~/.zshrc
cp npmrc ~/.npmrc

#Copy aliases
cat aliases mac-aliases > ~/.aliases

#Make directories
mkdir -p ~/workspace
mkdir -p ~/practices

# Set up git global values
cp gitignore ~/.gitignore_global
git config --global core.excludesfile '~/.gitignore_global'
git config --global user.email "krishnangokul9@gmail.com"
git config --global user.name "gokulkrishh"

#Set up npm for global install without sudo
mkdir "${HOME}/.npm-packages"
mkdir "${HOME}/.python-packages"

#Install commonly used npm and generator-smacss
npm install -g gulp grunt-cli jshint yo generator-smacss kill-tabs
