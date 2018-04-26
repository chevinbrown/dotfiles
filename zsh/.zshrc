export ZSH=$HOME/.oh-my-zsh

ENABLE_CORRECTION="true"
ZSH_THEME="spaceship"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/.aliases

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
export SSH_KEY_PATH="~/.ssh/id_ed25519"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
