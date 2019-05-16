# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Give the source for the theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# export the Android SDK info for React Native apps
# export ANDROID_HOME=~/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
# Default
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws_eb_env)


POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_folders"

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"

# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'

# setup default AWS Profile
AWS_DEFAULT_PROFILE='default'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)

# give plugin sources. These have to be given manually because we are using brew to manage them
# source /usr/local/opt/zsh-syntax-highlighting

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node npm brew sudo alias-tips z zsh-autosuggestions zsh-syntax-highlighting)


# User configuration
export PATH=/usr/local/sbin:$PATH
# export PATH=$HOME/bin:/usr/local/bin:$PATH
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

# app opening aliases
alias code='code .'

# LS lists information about files.
# show slashes for directories.
alias ls='ls -laF'
# long list format including hidden files and include unit size
alias ll='ls -la'

# node
alias kll='kill -9'
alias fpid3='lsof -i:3000'
alias fpid5='lsof -i:5858'

alias md='mkdir'
# alias fm='ps aux | grep mongo'
# alias code='cd ~/code/'

# search all aliases (Jacob!)
# falias "word to search for"
alias falias='alias | grep '

alias refrash='source ~/.bash_profile'

#finding folders fast
alias desk='cd ~/Desktop'
alias gitl='git log --pretty=oneline'
alias lgl='git log --oneline --decorate'
alias ..='cd ../'

# go back one directory
alias b='cd ..'
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias dev='cd ~/Documents/dev'
alias glog='git log --pretty=oneline --abbrev-commit'

# History lists your previously entered commands
alias h='history'

# confirm before executing and be verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'

# =================
# Additional Aliases
# =================

# Kill Mongo process when it gets hung up
alias monkill='ps aux | grep mongod'

# Hide/show all desktop icons (useful when presenting)
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/show hidden files in Finder
alias hide_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias show_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"

# ================
# Application Aliases
# ================
alias chrome='open -a "Google Chrome"'

# http://jorge.fbarr.net/2011/03/24/making-your-bash-history-more-efficient/
# Larger bash history (allow 32Â³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Make some commands not show up in history
export HISTIGNORE="h"

# ====================
# Git Aliases
# ====================
alias gs='git status'
alias gap='git add -p'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gacm='git add . && git commit -m '
alias gd='git diff'
alias go='git checkout '
alias gob='git checkout -b '
alias gk='gitk --all&'
alias gx='gitx --all'
alias glog='git log --pretty=oneline --abbrev-commit'
alias up='git pull upstream master'
# when I mispell git commands the following 2 commands help
alias got='git '
alias get='git '

alias zash='code ~/.zshrc'
# alias bhswp='cd ~/Sites/bhs-wp/wp-content/themes/bhs'
# alias bhszz='cd ~/Sites/bhs-wp-zz/wp-content/themes/bhs'
alias zfrash='source ~/.zshrc'
export PATH="/usr/local/sbin:$PATH"
# alias ethminer='~/Desktop/ethminer/build/ethminer/ethminer'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
