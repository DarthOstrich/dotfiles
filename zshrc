# For testing
# zmodload zsh/zprof

# set  python variable for pyenv
export PATH="${HOME}/.pyenv/shims:${PATH}"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Give the source for the theme
# source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# plugins
# source ~/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# export the Android SDK info for React Native apps
# export ANDROID_HOME=~/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Customise the Powerlevel9k prompts
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_folders"

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
# plugins=(git node npm brew sudo alias-tips zsh-autosuggestions zsh-syntax-highlighting)
plugins=(git node npm brew sudo)


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

# VIM stuff
# Sets fuzzy finder's default search function to AG, silver searcher
# It also sets a global ignore, to ignore things like node_modules. By default it will ignore stuff in
# the .gitignore file in the pwd, but if you are nested it doesn't. This is a workaround.
# export FZF_DEFAULT_COMMAND='ag --path-to-ignore ~/dotfiles/ag/.ignore -l --nogroup --nocolor --hidden'
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,package-lock.json}/*" 2> /dev/null'
# export FZF_DEFAULT_COMMAND="rg --hidden --follow -g '!package-lock.json'"
# export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'


# source the aliases
source "$HOME/dotfiles/zsh/aliases.zsh"

export PATH="$PATH:$HOME/.local/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init zsh)"

source "$HOME/dotfiles/ghTools/ghTools.sh"


# Load Angular CLI autocompletion.
# source <(ng completion script)

# For testing
# zprof
