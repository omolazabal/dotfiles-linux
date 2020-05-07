
# Exports
export PATH=$PATH:~/.local/bin
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export NPM_CONFIG_PREFIX=~/.npm-global
fpath+=$HOME/.zsh/pure

# Plugins
ZSH_THEME=""
DEFAULT_USER="oscar"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    docker
    docker-compose
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

# Functions
backup() { cp $1{,.bak}; }
paninit() { cp ~/dotfiles/pandoc/* .; make init;}

# Alias
alias ngrok=$HOME/.ngrok2/ngrok

