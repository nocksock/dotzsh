# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

autoload -U zmv
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="noxoc"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(noxoc git node npm vi-mode zsh-syntax-highlighting cake osx cloudapp)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR='vim'
 
export PATH="$HOME/code/doctorjs/bin:/usr/local/share/python/:/package/host/localhost/vim-7.3/bin/:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH:$HOME/.npm/grunt/node_modules/.bin"
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
set -o vi
bindkey -M vicmd '^R' history-incremental-search-backward

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# SPEED UP RAILS - but eat memory
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# added by travis gem
[ -f /Users/noxoc/.travis/travis.sh ] && source /Users/noxoc/.travis/travis.sh
