

#   ----------------------------------------------------------------
#
#   Welcome!!
#
#   dotfiles to get you started with OS X machine for development.
#
#   Author: https://github.com/gokulkrishh
#
#   Sections:
#   1.  Git Configs
#   2.  Install Oh My Zsh & Aliases & Shortcuts
#   3.  Install Homebrew
#   4.  Install NodeJS
#
#   ----------------------------------------------------------------

# Custom color codes & utility functions
source osx/utility.sh

# Terminal & Dock Setup
source osx/screen.sh
source osx/dock.sh
source osx/terminal.sh

#   -----------------------------
#   Welcome msg
#   -----------------------------

e_bold "${tan}┌──────────────────────────────────────────────────────────────┐
|                                                              |
| Welcome!!                                                    |
|                                                              |
| Setup your OS X machine for web development at ease.         |
|                                                              |
| Author: https://github.com/gokulkrishh                       |
|                                                              |
└──────────────────────────────────────────────────────────────┘"


# Author

#   -----------------------------
#   1.  Git configuration
#   -----------------------------

e_header "Setup git config (global)"
cp gitignore ~/.gitignore_global  # Adding .gitignore global
git config --global core.excludesfile "${HOME}/.gitignore_global"

ask "${blue} (Option) Enter Your Github Email: "
read -r emailId
if is_empty $emailId; then
  git config --global user.email "$emailId" # Git Email Id
  e_success "Email is set"
else
  e_error "Not set"
fi

ask "${blue} (Option) Enter Your Github Username: "
read -r userName
if is_empty $userName; then
  git config --global user.name "$userName" # Git Username
  e_success "Username is set"
else
  e_error "Not set"
fi


#   -------------------------------------------------------
#   2.  Install Oh My Zsh/Hyperterm & Aliases
#   -------------------------------------------------------

ZSH=~/.oh-my-zsh

if [ -d "$ZSH" ]; then
  e_warning "Oh My Zsh is already installed. skipping.."
else
  e_header "Installing Oh My Zsh..."
  curl -L http://install.ohmyz.sh | sh

  #To install ZSH themes & aliases
  e_header "Copying ZSH themes & aliases..."
  e_note "Check .aliases file for more details."
  cp oh-my-zsh/aliases ~/.aliases                                        # Copy aliases
  cp oh-my-zsh/zshrc ~/.zshrc                                            # Copy .zshrc config
  cp oh-my-zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme   # Copy dracula theme
fi

#   -----------------------------
#   3.  Install Homebrew
#   -----------------------------

if test ! $(which brew); then
  e_header "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  source osx/osx.sh
else
  e_warning "Homebrew is already installed. skipping.."
  source osx/osx.sh
fi

#   --------------------------------------------------
#   4.  Install NodeJS
#   --------------------------------------------------

if test ! $(which node); then
  e_header "Installing NodeJS"
  brew install node

  # To setup npm install/update -g without sudo
  cp npmrc ~/.npmrc
  mkdir "${HOME}/.npm-packages"
  export PATH="$HOME/.node/bin:$PATH"
  sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
else
  e_warning "NodeJS is already installed. skipping.."
fi

# Yarn install
if ! type yarn > /dev/null
then
  echo_title_install "yarn"
  brew install yarn
else
  echo_title_update "yarn"
  yarn self-update
fi

# Remove source
if [ -d ~/dotfiles ]; then
  sudo rm -R ~/dotfiles
fi

e_thanks "Author: https://github.com/gokulkrishh \n"

echo "🍺  Thats all, restart your terminal."

# END
