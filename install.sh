#!/bin/zsh

DOTFILES=(.zshrc .vimrc .tmux.conf .tmux-powerlinerc)

for file in ${DOTFILES[@]}; do
    echo $file
    ln -sf ~/dotfiles/$file ~/$file
done
