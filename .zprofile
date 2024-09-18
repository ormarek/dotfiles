eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(fnm env --use-on-cd --corepack-enabled)"

alias reload="source ~/.zprofile"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias n="nvim"
