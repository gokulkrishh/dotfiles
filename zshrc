# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##Shortcuts
alias s='git status'

# Easy Navigation
alias ..="cd .."
alias ...="cd ../.."
alias p="cd ~/practices"
alias w="cd ~/workspace"

# Tools
alias st="open -a 'Sublime Text'"
alias at="open -a 'Atom'"

# Start local server
alias server='python -m SimpleHTTPServer'

# List all files colorized in long format
alias l='ls -l ${colorflag}'

# Utilities
alias f="open -a Finder"
alias ip="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias rm="=rm -rf"
alias idm="wine ~/.wine/drive_c/Program\ Files/Internet\ Download\ Manager/IDMan.exe"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# NODE & BOWER
alias npmi="sudo npm install"
alias npmg="sudo npm install -g"
alias npmu="sudo npm update"
alias bi="bower install"

##end of shortcuts

# To set node packages path
export PATH="$HOME/.npm-packages/bin:$PATH"

## Shortcuts:
alias s='git status'

# Easy Navigation:
alias ..="cd .."
alias ...="cd ../.."
alias p="cd ~/practices"
alias w="cd ~/workspace"

# Tools:
alias st="open -a 'Sublime Text'"
alias at="open -a 'Atom'"

# Start local server:
alias server='python -m SimpleHTTPServer'

# List all files colorized in long format:
alias l='ls -l ${colorflag}'

# Utilities:
alias f="open -a Finder"
alias ip="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias rm="=rm -rf"

# Reload the shell (i.e. invoke as a login shell):
alias reload="exec $SHELL -l"

# Show/hide hidden files in Finder:
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"


##To set node packages path
# Allow global npm install without sudo
# Taken from: https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Node & Bower:
alias npmi="sudo npm install"
alias npmg="sudo npm install -g"
alias npmu="sudo npm update"
alias bi="bower install"

## end of shortcuts
