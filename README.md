# dot-files

different dot-files for editor, command line, dev setup etc...

## how to

- `git clone git@github.com:BoaPi/.dot-files.git ~/.dot-files`
- add symlinks to `.zshrc` and `nvim`
  - ZSH - `ln -s ~/.dot-files/.zshrc`
  - NVIM - `ln -s ~/.dot-files/nvim`
  - alacritty - `ln -s ~/.dot-files/alacritty/.alacritty.yml`
  - tmux - `ln -s ~/.dot-files/tmux/tmux.conf`
  - tmuxinator - `ln -s ~/.dot-files/tmux/tmuxinator`

## dev setup

| Tool    | Description                        | Plugins                                                                                                                                                     |
| ------- | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| iTerm2  | used terminal                      | `oh-my-szh`, `zsh-nvm`, `zsh-syntax-highlighting`, `zsh-autosuggestions`, `z`, [Powerline Fonts](https://github.com/powerline/fonts), [Profile](boapi.json) |
| VSCode  | used editor                        |                                                                                                                                                             |
| nvm     | manager for different node version |                                                                                                                                                             |
| raycast | alternative for spotlight          |                                                                                                                                                             |
