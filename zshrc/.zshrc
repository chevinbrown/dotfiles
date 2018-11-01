export ZSH=$HOME/.oh-my-zsh
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

plugins=(
  env
  git
  zsh-completions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.work-aliases

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

autoload -U promptinit; promptinit;
autoload -U compinit; compinit;
prompt pure

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kevin/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kevin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kevin/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kevin/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
