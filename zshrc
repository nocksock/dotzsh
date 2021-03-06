#!/bin/zsh
export EDITOR='vim' # used for commits and such

# Setting locales 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setting Paths
# TODO: Maybe use $PATH in front for better readability?
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/emacs-doom/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

export DENO_INSTALL="/Users/riedemann/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export CDPATH=".:$HOME:$HOME/development:$HOME/development/projects"

export DOOMDIR="$HOME/emacs-doom-config/"

# ulimit -n 1000            # Setting resource limit , disabled because I forgot what it does.
# set -o vi                 # Use VI bindings, disabled because it's weird to use within emacs.

#
# Plugins
# #
[ -f ~/.zsh/always-tmux.zsh ] && source ~/.zsh/always-tmux.zsh
[ -f ~/.zsh/aliases.zsh ] && source ~/.zsh/aliases.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zsh/auto-nvm.zsh ] && source ~/.zsh/auto-nvm.zsh

# Disabled in favor of starship 
# [ -f ~/.zsh/pure-prompt.zsh ] && source ~/.zsh/pure-prompt.zsh
export STARSHIP_CONFIG=~/.zsh/starship.toml

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=90000              # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=90000              # Number of history entries to save to disk
HISTDUP=erase               # Erase duplicates in the history file
setopt    appendhistory     # Append history to the history file (no overwriting)
setopt    sharehistory      # Share history across terminals
setopt    incappendhistory  # Immediately append to the history file, not just when a term is killed

eval "$(starship init zsh)" # Start star ship
