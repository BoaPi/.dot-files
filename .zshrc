# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to use pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Path for Go
export GO111MODULE=on
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Path for Postgres
export PSQL_BIN=/opt/homebrew/opt/postgresql@15/bin
export PATH=$PATH:$PSQL_BIN

# plug-ins
plugins=(
  z
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  zsh-nvm
  npm
)

fpath+="${ZSH_CUSTOM:-"$ZSH/custom"}/plugins/zsh-completions/src"

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
alias lg="lazyGit"
alias gitAuth="ssh-add ~/.ssh/id_rsa"
alias allowBrew="sudo chown -R $(whoami) /usr/local/"
alias ls="clear && lsd -l -a --group-directories-first"

# add fuzzy find for folders
f() {
  cd $(fd -H -t d . $HOME/Documents | fzf)
}

# add yazi quick usage
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"
eval "$(starship init zsh)"
