#!/bin/bash

sudo pacman -S \
ccze \
docker \
dropbox \
vim \
ttf-hack \
chromium \
figlet \
lolcat

function execFile {
  chmod +x "$1"
  ./"$1"
}

execFile ./devstuff.sh
execFile ./vimstuff.sh
execFile ./gitstuff.sh

cp .bashrc ~/.bashrc
source ~/.bashrc
