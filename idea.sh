#!/bin/bash
if [ "$#" -ne 1]; then
  wget -O idea.tar.gz https://download.jetbrains.com/idea/ideaIC-2016.3.2.tar.gz
else
  wget -O idea.tar.gz "$1"
mkdir -p ~/install/idea
tar -xzf idea.tar.gz -C ~/install/idea/
rm -f idea.tar.gz
find ~/install/idea/ -type f -name "idea\.sh" -exec ln -s {} ~/idea.sh ';'
echo "alias idea=\"~/idea.sh\"" >> ~/.bashrc
source ~/.bashrc
