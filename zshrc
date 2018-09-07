#!/bin/zsh
export EDITOR='vim' # used for commits and such
export ZSH_DISABLE_COMPFIX=true

# Setting locales 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setting Paths
export PATH="$HOME/.composer/vendor/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:$PATH"
export CDPATH=".:$HOME:$HOME/development:$HOME/development/projects"

#
# NVM
#
# Auto load NVM Version for folder
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use 
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

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

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=9000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=9000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/qt/bin:$PATH"
