#!/bin/bash

echo "Executing git config" 

git config --global user.name JulienBe
git config --global user.email bertozzijulien@gmail.com
git config credential.helper 'cache --timeout=3600'
git config --global core.editor vim

