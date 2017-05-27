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

exec ./devstuff.sh
exec ./vimstuff.sh
exec ./gitstuff.sh

cp .bashrc ~/.bashrc
source ~/.bashrc

function exec {
  chmod +x "$1"
  ./"$1"
}
