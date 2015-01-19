alias gss="git status -s"
alias tat='tmux attach -t'
alias -g G='| grep'
alias -g L='| less'
alias gn='python ~/src/geeknote/geeknote.py'
alias d1='echo "" | vipe -c "set ft=markdown" | dayone new'
alias vs='vim +VimShell'
alias chat='ssh pi@nxxxc.duckdns.org -p 1987 -t "tmux attach -t 0"'

function tmn() {
	tmux new -s ${PWD##*/}
}

alias dsend='open -a Transmit --hide --background'
