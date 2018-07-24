#!/bin/zsh
export EDITOR='vim' # used for commits and such
export ZSH_DISABLE_COMPFIX=true

# Setting locales 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setting Paths
export PATH="$HOME/.composer/vendor/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:$PATH"
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}:/usr/local/lib/node_modules'
export CDPATH=".:$HOME:$HOME/development:$HOME/development/projects"

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

ulimit -n 1000
set -o vi

# Plugins
[ -f ~/.zsh/aliases.zsh ] && source ~/.zsh/aliases.zsh
[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Pure Prompt
# https://github.com/sindresorhus/pure#getting-started 
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=10
prompt pure

# Autocomplete
autoload -Uz compinit
compinit

bindkey -M viins '^R' fh
