alias gss="git status -s"
alias tat='tmux attach -t'
alias -g G='| grep'
alias -g L='| less'
alias gn='python ~/src/geeknote/geeknote.py'
alias d1='echo "" | vipe -c "set ft=markdown" | dayone new'
alias vs='vim +VimShell'
alias chat='ssh riedeman@enif.uberspace.de -t "tmux attach -t 0"'

function tmn() {
	tmux new -s ${PWD##*/}
}

alias dsend='open -a Transmit --hide --background'

git-grouped-log () {
  while read -r -u 9 since name
  do
    until=$(date -j -v+1d -f '%Y-%m-%d' $since +%Y-%m-%d)

    echo "$since $name"
    echo

    GIT_PAGER=cat git log             \
      --no-merges                     \
      --committer="$name"             \
      --since="$since 00:00:00 +0000" \
      --until="$until 00:00:00 +0000" \
      --format='  * [%h] %s'

    echo
  done 9< <(git log --no-merges --format=$'%cd %cn' --date=short | sort --unique --reverse)
}

function codekit() {
	open $1 -a CodeKit
}
