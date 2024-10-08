# PATHS
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# EVALS
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(fnm env --use-on-cd --corepack-enabled)"
eval "$(pyenv init -)"

# ALIASES
alias reload="source ~/.zprofile"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias n="nvim"
