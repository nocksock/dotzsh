# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
autoload -U zmv
bindkey -v # vi-mode
ulimit -n 1000

# OH-MY-ZSH
export DISABLE_AUTO_UPDATE=true
export DISABLE_AUTO_TITLE=true

plugins=(noxoc git node npm cake osx)
[[ -e $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export PATH="$HOME/code/doctorjs/bin:/usr/local/share/python/:/package/host/localhost/vim-7.3/bin/:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH:$HOME/.npm/grunt/node_modules:/.bin:/Users/noxoc/.gem/ruby/2.0.0/bin"
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
set -o vi

bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward


source $HOME/.zsh/moar_colors.zsh
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/aliases.zsh

# NVM
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
[[ -d $HOME/.rvm/bin ]] && PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/noxoc/.travis/travis.sh ] && source /Users/noxoc/.travis/travis.sh

export CDPATH=".:$HOME:$HOME/code:$HOME/code/projects"
export NODE_PATH=/usr/local/lib/jsctags:/usr/local/lib/jsctags:${NODE_PATH}:/usr/local/lib/node_modules:/usr/local/lib/node_modules
