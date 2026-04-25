#!/bin/bash

set -e

# Welcome!!
# Setup your MacOS for web development at ease.
# Source: https://github.com/gokulkrishh/dotfiles

## Custom color codes & utility functions
source helper/utility.sh

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
cp gitignore ~/.gitignore_global
git config --global core.excludesfile "${HOME}/.gitignore_global"
git config --global help.autocorrect 1
git config --global init.defaultBranch main

ask "${blue} (Required) Enter Your Fullname: "
read -r fullName
if ! is_empty "$fullName"; then
  e_success "Captured the Fullname"
else
  e_error "Fullname not set"
fi

ask "${blue} (Required) Enter Your Email (For Github, NPM config): "
read -r emailId
if ! is_empty "$emailId"; then
  git config --global user.email "$emailId"
  e_success "Captured the Email Id"
else
  e_error "Not set"
fi

ask "${blue} (Required) Enter Your Github Username: "
read -r userName
if ! is_empty "$userName"; then
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
  curl -fsSL https://install.ohmyz.sh | sh

  e_header "Copying ZSH themes & aliases..."
  e_note "Check .aliases file for more details."
  cp oh-my-zsh/aliases ~/.aliases
  cp oh-my-zsh/zshrc ~/.zshrc
  cp oh-my-zsh/bullet-train.zsh-theme ~/.oh-my-zsh/themes/bullet-train.zsh-theme
  cp oh-my-zsh/z.sh ~/z.sh
  git clone https://github.com/peterhurford/git-it-on.zsh ~/.oh-my-zsh/custom/plugins/git-it-on
fi

## Create codelabs & workspace directory
mkdir -p "$HOME/codelabs"
mkdir -p "$HOME/workspace"

# 3. Install Homebrew

if test ! $(which brew); then
  e_header "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  e_warning "Homebrew is already installed. Skipping.."
fi

# 4. Install ZSH NVM

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-nvm" ]; then
  e_header "Installing zsh-nvm.."

  git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

  cp npmrc ~/.npmrc
  mkdir -p "${HOME}/.npm-packages"
  sudo chown -R "$(whoami)" "$(npm config get prefix)"/{lib/node_modules,bin,share}

  npm config set init-author-name "$fullName"
  npm config set init-author-email "$emailId"
else
  e_warning "NVM is already installed. Skipping.."
fi

# 5. Install apps & tools via Homebrew

brew install --cask \
  thebrowsercompany-dia \
  iterm2 \
  visual-studio-code \
  1password

brew install \
  wget \
  git \
  duti \
  trash

# 6. Apply macOS system defaults

e_header "Applying macOS system defaults..."
source osx/screen.sh
source osx/dock.sh
source osx/system.sh

# 7. Generate SSH key for GitHub

e_header "Generating an RSA token for GitHub"
ssh-keygen -t rsa -b 4096 -C "$emailId"
printf "Host *\n  AddKeysToAgent yes\n  UseKeychain yes\n  IdentityFile ~/.ssh/id_rsa\n" | tee ~/.ssh/config
eval "$(ssh-agent -s)"
echo "run 'pbcopy < ~/.ssh/id_rsa.pub' and paste that into GitHub"

## Remove cloned dotfiles from system
if [ -d ~/dotfiles ]; then
  e_warning "Removing ~/dotfiles directory..."
  rm -rf ~/dotfiles
fi

e_thanks "Author: https://github.com/gokulkrishh \n"

echo "🍺  Thats all, Done. Note that some of these changes require logout/restart to take effect."

# END
