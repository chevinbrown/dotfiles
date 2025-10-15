# ============================================================================
# ZSH Configuration
# ============================================================================

# ----------------------------------------------------------------------------
# Path Setup (order matters!)
# ----------------------------------------------------------------------------
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# ----------------------------------------------------------------------------
# Oh My Zsh Configuration
# ----------------------------------------------------------------------------
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME=""

plugins=(
  asdf
  autoenv
  git
  zsh-completions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ----------------------------------------------------------------------------
# Prompt Setup (Pure)
# ----------------------------------------------------------------------------
fpath+=/opt/homebrew/opt/zsh-async/share/zsh/site-functions
fpath+=/opt/homebrew/opt/pure/share/zsh/site-functions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

autoload -U promptinit; promptinit
prompt pure

# ----------------------------------------------------------------------------
# Environment Variables
# ----------------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ERL_AFLAGS="-kernel shell_history enabled"

# Editor preferences
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# ----------------------------------------------------------------------------
# Custom Functions
# ----------------------------------------------------------------------------
load-local-conf() {
  # Source .env file if it exists and is readable
  if [[ -f .env && -r .env ]]; then
    source .env
  fi
}

# ----------------------------------------------------------------------------
# External Integrations
# ----------------------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ----------------------------------------------------------------------------
# Aliases
# ----------------------------------------------------------------------------
source ~/.aliases
source ~/.work-aliases

