# dot-files

different dot-files for editor, command line, dev setup etc...

## How to

this commands are only examples and needs to be adjusted, if the directory structure is different.

- `git clone git@github.com:BoaPi/.dot-files.git ~/.dot-files`
- add symlinks to `.zshrc` and `nvim`
  - ZSH - `ln -s ~/.dot-files/.zshrc`
  - NVIM - `ln -s ~/.dot-files/nvim` - in `~.config/`
  - alacritty - `ln -s ~/.dot-files/alacritty/.alacritty.yml`
  - tmux - `ln -s ~/.dot-files/tmux/.tmux.conf`

## dev setup

| Tool       | Description                               | more info                                                                                                                                                     |
| ---------- | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| catppuccin | overall theme for vim, alacritty and tmux |                                                                                                                                                             |
| neovim     | used editor                               |                                                                                                                                                             |
| alacritty  | used terminal                             |                                                                                                                                                             |
| starship   | used prompt for the shell                 |                                                                                                                                                             |
| tmux       | used terminal multiplexer                 |                                                                                                                                                             |
| tmp        | tmux package manager                      |                                                                                                                                                             |
| NerdFont   | used as font in alacritty & tmux          | [NerdFonts](https://www.nerdfonts.com/cheat-sheet) can be installed via `brew`                                                                                                         |
| LazyGit    | used git cmd tool                         |                                                                                                                                                             |
| zsh        | used shell                                | `oh-my-szh`, `zsh-nvm`, `zsh-syntax-highlighting`, `zsh-autosuggestions`, `z`, [Powerline Fonts](https://github.com/powerline/fonts), [Profile](boapi.json) |
| nvm        | manager for different node version        |                                                                                                                                                             |
| raycast    | alternative for spotlight                 |                                                                                                                                                             |
| ripgrep    | rust written grep alternative             |                                                                                                                                                             |

## extensions to look into

* [zoxide](https://github.com/ajeetdsouza/zoxide)
* [bat](https://github.com/sharkdp/bat)
* [lsd](https://github.com/lsd-rs/lsd)
* [crates](https://github.com/Saecki/crates.nvim)
* [oil.nvim](https://github.com/stevearc/oil.nvim)
* [trouble.nvim](https://github.com/folke/trouble.nvim)

## Next Steps

* [setup](https://www.youtube.com/watch?v=J9yqSdvAKXY)
* [.dot-files](https://github.com/cpow/cpow-dotfiles)
* [primeagen](https://github.com/ThePrimeagen/init.lua/tree/master)
* LspSAGA
