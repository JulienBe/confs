#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo pacman -S vim-molokai
mkdir -p ~/.vim/{autoload,bundle,sessions,tmp}
./cpvimrc.sh

