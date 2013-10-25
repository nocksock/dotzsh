# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

autoload -U zmv
export ZSH_THEME="noxoc"
# STFUOHMYZSH! 
export DISABLE_AUTO_UPDATE="true"
# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"
plugins=(noxoc git node npm vi-mode zsh-syntax-highlighting osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR='vim'
export PATH="$HOME/code/doctorjs/bin:/usr/local/share/python/:/package/host/localhost/vim-7.3/bin/:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH:$HOME/.npm/grunt/node_modules/.bin"
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
set -o vi
bindkey -M vicmd '^R' history-incremental-search-backward

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
[[ -d $HOME/.rv./bin ]] && PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/noxoc/.travis/travis.sh ] && source /Users/noxoc/.travis/travis.sh
