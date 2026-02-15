# Run tmux on startup
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -dt default || tmux new-session -s default
fi 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to Bun global packages
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Run oh-my-zsh shell script
source $ZSH/oh-my-zsh.sh

# Run p10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Run NVM
source /usr/share/nvm/init-nvm.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Config
eval "$(zoxide init zsh)"

# Aliases
alias ls="eza --icons=always"
alias cd="z"
alias vi="nvim"
