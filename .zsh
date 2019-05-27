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
alias folder="nautilus ."
alias c="code ."
alias zshreload="source ~/.zshrc"
alias codeextensions="code --list-extensions"