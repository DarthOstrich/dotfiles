# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# app opening aliases
alias code='code .'
alias vim='nvim' # trick yoself!

# Silver searcher ignore file link
# alias ag='ag --path-to-ignore ~/dotfiles/ag/.ignore'

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
alias gacm='git pull && git add . && git commit -m '
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
alias ghre='gh repo view --web'

alias zash='nvim ~/dotfiles/zshrc'
alias vimrc='nvim ~/dotfiles/vimrc'
alias initvim='nvim ~/.config/nvim/init.vim'
# alias bhswp='cd ~/Sites/bhs-wp/wp-content/themes/bhs'
# alias bhszz='cd ~/Sites/bhs-wp-zz/wp-content/themes/bhs'
alias zfrash='source ~/dotfiles/zshrc'
export PATH="/usr/local/sbin:$PATH"
# alias ethminer='~/Desktop/ethminer/build/ethminer/ethminer'

# AWS
alias amp="amplify"

# Messing around
alias 🤖='npm run develop'
