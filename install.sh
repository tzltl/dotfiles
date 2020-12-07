#!/bin/zsh

cp .zshrc ~/
echo ".zshrc installed."

cp ./.tmux/.tmux.conf ~/
echo ".tmux.conf installed."

cp ./.tmux/.tmux-powerlinerc ~/
echo "tmux-powerlinerc installed."

cp ./.tmux/tmux-powerline/themes/2020tmuxpowerlinetheme.sh ~/tmux-powerline/themes/
echo "tmux powerline theme installed."

cp -r ./.config/nvim ~/.config/
echo "NeoVim configuration files installed."

cp .oh-my-zsh/themes/2020theme.zsh-theme ~/.oh-my-zsh/themes/
echo "zsh theme installed."
