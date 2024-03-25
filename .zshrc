# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to use pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Path for Go
export GO_BIN="$HOME/go/bin"
export PATH="$PATH:$GO_BIN"

# editor
export EDITOR='nvim'

# plug-ins
plugins=(
  z
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-nvm
  npm
)

source $ZSH/oh-my-zsh.sh

# User configuration
# prompt
prompt_context() {}

eval $(thefuck --alias)

# aliases
alias vim="nvim"
alias nv="nvim"
alias v="nvim"
alias reload="source $HOME/.zshrc"
alias folder="open ."
alias c="code-insiders ."
alias p="$HOME/documents/projects"
alias lg="lazyGit"
alias gitAuth="ssh-add ~/.ssh/id_rsa"
alias allowBrew="sudo chown -R $(whoami) /usr/local/"
alias ls="clear && lsd -l -a --group-directories-first"
alias pull="git pull"
alias push="git push"
alias dev="git co develop && pull"
alias auditCritical="npm audit | grep -E \"(Critical)\" -B3 -A10"
alias auditHigh="npm audit | grep -E \"(High)\" -B3 -A10"
alias auditCritialAndHigh="npm audit | grep -E \"(High | Critical)\" -B3 -A10"
alias gitCleanUp="dev && git branch | grep \"fix/.*\|feat/.*\|feature/.*\|refactor/.*\|docu/.*\|delivery.*\|release.*\|rb-sync.*\|rb-update.*\|rb-upstream.*\" | xargs git branch --delete"
alias top="btm"

# add fuzzy find for folders
f() {
  cd $(fd -H -t d . $HOME/Documents | fzf)
}

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

eval "$(starship init zsh)"
