# dot-files

different dot-files for editor, command line, dev setup etc...

## How to

this commands are only examples and needs to be adjusted, if the directory structure is different.

- `git clone git@github.com:BoaPi/.dot-files.git ~/.dot-files`
- add symlinks to `.zshrc` and `nvim`
  - ZSH - `ln -s ~/.dot-files/.zshrc`
  - NVIM - `ln -s ~/.dot-files/nvim`
  - alacritty - `ln -s ~/.dot-files/alacritty/.alacritty.yml`
  - tmux - `ln -s ~/.dot-files/tmux/.tmux.conf`

## dev setup

| Tool       | Description                               | Plugins                                                                                                                                                     |
| ---------- | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| catppuccin | overall theme for vim, alacritty and tmux |                                                                                                                                                             |
| neovim     | used editor                               |                                                                                                                                                             |
| alacritty  | used terminal                             |                                                                                                                                                             |
| starship   | used prompt for the shell                 |                                                                                                                                                             |
| tmux       | used terminal multiplexer                 |                                                                                                                                                             |
| tmp        | tmux package manager                      |                                                                                                                                                             |
| NerdFont   | used as font in alacritty & tmux          | [NerdFonts](https://www.nerdfonts.com/cheat-sheet)                                                                                                          |
| LazyGit    | used git cmd tool                         |                                                                                                                                                             |
| LazyDocker | used docker cmd tool                      |                                                                                                                                                             |
| zsh        | used shell                                | `oh-my-szh`, `zsh-nvm`, `zsh-syntax-highlighting`, `zsh-autosuggestions`, `z`, [Powerline Fonts](https://github.com/powerline/fonts), [Profile](boapi.json) |
| nvm        | manager for different node version        |                                                                                                                                                             |
| raycast    | alternative for spotlight                 |                                                                                                                                                             |
| ripgrep    | rust written grep alternative             |                                                                                                                                                             |
