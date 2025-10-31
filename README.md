# dot-files

different dot-files for editor, command line, dev setup etc...

## How to

this commands are only examples and needs to be adjusted, if the directory structure is different.

- `git clone git@github.com:BoaPi/.dot-files.git ~/.dot-files`
- add symlinks to `.zshrc` and `nvim`
  - ZSH - `ln -s ~/.dot-files/.zshrc`
  - NVIM - `ln -s ~/.dot-files/nvim` - in `~.config/`

## dev setup

| Tool       | Description                               | more info                                                                                                                                                                      |
| ---------- | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| catppuccin | overall theme for vim, alacritty and tmux |                                                                                                                                                                                |
| neovim     | used editor                               |                                                                                                                                                                                |
| ghostty    | used terminal                             |                                                                                                                                                                                |
| starship   | used prompt for the shell                 |                                                                                                                                                                                |
| tmp        | tmux package manager                      |                                                                                                                                                                                |
| NerdFont   | used as font in alacritty & tmux          | [NerdFonts](https://www.nerdfonts.com/cheat-sheet) can be installed via `brew`                                                                                                 |
| LazyGit    | used git cmd tool                         |                                                                                                                                                                                |
| zsh        | used shell                                | `oh-my-szh`, `zsh-nvm`, `zsh-syntax-highlighting`, `zsh-autosuggestions`, `zsh-completions`, `z`, [Powerline Fonts](https://github.com/powerline/fonts), [Profile](boapi.json) |
| fnm        | fast node manager                         |                                                                                                                                                                                |
| raycast    | alternative for spotlight                 |                                                                                                                                                                                |
| rg         | rust written grep alternative             |                                                                                                                                                                                |
| fzf        | fuzzy finder                              |                                                                                                                                                                                |
| fd         | rust written find alternative             |                                                                                                                                                                                |
| lsd        | rust written ls alternative               |                                                                                                                                                                                |
| bat        | rust written cat alternative              |                                                                                                                                                                                |
| jq         | JSON query cli tool                       |                                                                                                                                                                                |
| entr       | universal task runner                     |                                                                                                                                                                                |

## to-do

- [ ] setup claude code for development (backend/nvim/frontend)
- [ ] treesitter -> add selection of nodes forward and backward
- [ ] setup LSPs and code completion
- [ ] do I need LazyGit? maybe git-fugitive is the way to go?
- [ ] try to figure out why nvim starts so slowly
- [ ] [yazi](https://github.com/sxyazi/yazi)
