# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tobias.weyer/.oh-my-zsh"

# theme
ZSH_THEME="agnoster"

# plug-ins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  npm
  web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration
# prompt
prompt_context() {}

# aliases
alias rm=trash
alias folder="open ."
alias c="code ."
alias zshreload="source ~/.zshrc"
alias codeextensions="code --list-extensions"
alias p="~/documents/projects"
alias v="verdaccio"
