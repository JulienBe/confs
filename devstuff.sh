#!/bin/bash

sudo pacman -S python-pip \
jdk8-openjdk \
maven \
intellij-idea-community-edition \
ruby \
scala \
sbt

gem install asciidoctor

curl https://raw.githubusercontent.com/foundweekends/conscript/master/setup.sh | sh
cs foundweekends/giter8
