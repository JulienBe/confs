#!/bin/bash

function add {
  echo "$1" >> ~/.bashrc
}

add "alias g=git"
add "alias gpoh='git push origin HEAD'"
add "alias grv='git remote -v'"
source ~/.bashrc
