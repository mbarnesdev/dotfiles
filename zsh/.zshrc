# Aliases
alias lg="lazygit"
alias vim="nvim"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export NVM_DIR="$HOME/.nvm"

# Bun
[ -s "/home/martin/.bun/_bun" ] && source "/home/martin/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export PATH="$PATH:/opt/go/bin"

# Nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# Tmux
export TMUX_CONFIG=~/.config/tmux/tmux.conf

# General
export PATH="$PATH:$HOME/.local/bin"
