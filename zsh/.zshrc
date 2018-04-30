export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=""

# Load pure prompt
autoload -U promptinit; promptinit
prompt pure

plugins=(
  env
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/.aliases

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/id_ed25519"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env && -r .env ]]; then
       source .env
     fi
}
add-zsh-hook chpwd load-local-conf

# Load prompt

autoload -U promptinit; promptinit
prompt pure
