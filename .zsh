# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tobias.weyer/.oh-my-zsh"

# theme
ZSH_THEME="agnoster"

# plug-ins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-nvm
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
alias pull="git pull"
alias gitAuth="ssh-add ~/.ssh/id_rsa"

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
