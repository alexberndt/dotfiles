# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alex/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  dotenv
  bundler
)

source $ZSH/oh-my-zsh.sh

# User configuration
eval "$(starship init zsh)"
