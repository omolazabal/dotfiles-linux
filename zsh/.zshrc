
# Exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

# Plugins
ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
    zsh-syntax-highlighting
    git
    extract
    history
    github
    autojump
    web-search
    osx
)

# Loading
source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

# Start tmux
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux new-session -A -s main
fi

# Alias
alias top="htop"
alias c="clear"

# Functions
mc()     { mkdir $1; cd $1; }
cl()     { cd $1; ll; }
backup() { cp $1{,.bak}; }

# System specific
source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"

