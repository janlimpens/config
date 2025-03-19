#! /usr/bin/bash

export EDITOR=hx
export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="$HOME/bin:$PATH"

alias realias='$EDITOR $HOME/.aliases && source $HOME/.aliases'
source "$HOME/.aliases"
eval "$(fzf --bash)"

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias config='/usr/bin/git --git-dir=/home/jan/.cfg/ --work-tree=/home/jan'
