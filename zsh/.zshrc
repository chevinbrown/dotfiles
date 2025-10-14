# Load prompt
fpath+=/opt/homebrew/opt/zsh-async/share/zsh/site-functions
fpath+=/opt/homebrew/opt/pure/share/zsh/site-functions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

autoload -U promptinit; promptinit;
prompt pure

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME=""
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/Users/kevin/.asdf/shims/npm:$PATH"
export NODE_PATH="/Users/kevin/.asdf/shims/npm"
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

plugins=(
  asdf
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

load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env && -r .env ]]; then
       source .env
     fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

