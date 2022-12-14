#!/bin/bash

# Welcome!!
# Setup your MacOS for web development at ease.
# Source: https://github.com/gokulkrishh/dotfiles

## Custom color codes & utility functions
source helper/utility.sh

## Terminal & Dock setup
source osx/screen.sh
source osx/dock.sh
source osx/system.sh
source osx/terminal.sh

# Welcome message

e_bold "${tan}┌──────────────────────────────────────────────────────────────┐
|                                                              |
| Welcome!!                                                    |
|                                                              |
| Setup your MacOS for web development at ease.                |
|                                                              |
| Author: https://github.com/gokulkrishh                       |
|                                                              |
└──────────────────────────────────────────────────────────────┘"

# 1. Git configuration

e_header "To setup git/npm/ssh configs"
cp gitignore ~/.gitignore_global  ## Adding .gitignore global
git config --global core.excludesfile "${HOME}/.gitignore_global"
git config --global help.autocorrect 1 ## Git autocorrections
git config --global init.defaultBranch main ## Git main branch as default

ask "${blue} (Required) Enter Your Fullname: "
read -r fullName
if is_empty $fullName; then
  e_success "Captured the Fullname"
else
  e_error "Fullname not set"
fi

ask "${blue} (Required) Enter Your Email (For Github, NPM config): "
read -r emailId
if is_empty $emailId; then
  git config --global user.email "$emailId"
  e_success "Captured the Email Id"
else
  e_error "Not set"
fi

ask "${blue} (Required) Enter Your Github Username: "
read -r userName
if is_empty $userName; then
  git config --global user.name "$userName"
  e_success "Captured the Username"
else
  e_error "Username not set"
fi

# 2. Install Oh-My-Zsh & custom aliases

ZSH=~/.oh-my-zsh

if [ -d "$ZSH" ]; then
  e_warning "Oh My Zsh is already installed. Skipping.."
else
  e_header "Installing Oh My Zsh..."
  curl -L http://install.ohmyz.sh | sh

  ## To install ZSH themes & aliases
  e_header "Copying ZSH themes & aliases..."
  e_note "Check .aliases file for more details."
  cp oh-my-zsh/aliases ~/.aliases                                        ## Copy aliases
  cp oh-my-zsh/zshrc ~/.zshrc                                            ## Copy zshrc configs
  cp oh-my-zsh/bullet-train.zsh-theme ~/.oh-my-zsh/themes/bullet-train.zsh-theme   ## Copy zsh theme
  cp oh-my-zsh/z.sh ~/z.sh                                               ## Copy z.sh autocompletion file
  git clone https://github.com/peterhurford/git-it-on.zsh ~/.oh-my-zsh/custom/plugins/git-it-on ## Copy git it on utilities plugin
fi

## Create codelabs & workspace directory
mkdir codelabs
mkdir workspace

# 3. Install Homebrew

if test ! $(which brew); then
  e_header "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  e_warning "Homebrew is already installed. Skipping.."
fi

# 4. Install ZSH NVM

if test ! $(which nvm); then
  e_header "Installing zsh-nvm.."

  git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

  ## To setup npm install/update -g without sudo
  cp npmrc ~/.npmrc
  mkdir "${HOME}/.npm-packages"
  export PATH="$HOME/.node/bin:$PATH"
  sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}

  ## Set npm global config
  npm config set init-author-name "$fullName"
  npm config set init-author-email "$emailId"
	npm config set init-author-url "$siteName"
else
  e_warning "NVM is already installed. Skipping.."
fi

## Install OSX apps
brew install --cask \
  brave-browser \
  iterm2 \
  visual-studio-code

## Install terminal apps
brew install \
  wget \
  git

## Print installed node, npm version
echo "node --version: $(node --version)"
echo "npm --version: $(npm --version)"

echo "Generating an RSA token for GitHub"
ssh-keygen -t rsa -b 4096 -C "$emailId"
echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/id_rsa" | tee ~/.ssh/config
eval "$(ssh-agent -s)"
echo "run 'pbcopy < ~/.ssh/id_rsa.pub' and paste that into GitHub"

## Remove cloned dotfiles from system
if [ -d ~/dotfiles ]; then
  sudo rm -R ~/dotfiles
fi

e_thanks "Author: https://github.com/gokulkrishh \n"

echo "🍺  Thats all, Done. Note that some of these changes require logout/restart to take effect."

# END
