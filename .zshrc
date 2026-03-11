# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup variables
export ZSH="$HOME/.oh-my-zsh"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Enable NVM lazy loading
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' lazy yes

# ZSH themes & plugins
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting nvm)

# Run oh-my-zsh shell script
source $ZSH/oh-my-zsh.sh

# Custom settings
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

eval "$(zoxide init zsh)"

# Aliases
alias ls="eza --icons=always"
alias cd="z"
alias vi="nvim"

# Run tmux on startup
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -dt default || tmux new-session -s default
fi
