# Load prompt
fpath+=$HOME/.zsh/pure
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

autoload -U promptinit; promptinit;
prompt pure

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME=""
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/Users/kevin/.asdf/shims/npm:$PATH"
export NODE_PATH="/Users/kevin/.asdf/shims/npm"
export ERL_AFLAGS="-kernel shell_history enabled"

plugins=(
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

. /opt/homebrew/opt/asdf/etc/bash_completion.d/asdf

load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env && -r .env ]]; then
       source .env
     fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
