

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


#   -------------------------------------------------
#   2.  Install Oh My Zsh & Aliases & Shortcuts
#   -------------------------------------------------

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
else
  e_warning "Homebrew is already installed. skipping.."
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
else
  e_warning "NodeJS is already installed. skipping.."
fi

e_success "Restart your terminal to get started.."

e_thanks "☠  Author: https://github.com/gokulkrishh \n"

# END
