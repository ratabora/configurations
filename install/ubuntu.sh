#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install git xclip vim zsh tmux openjdk-8-jdk

chsh -s /bin/zsh

curl -sL https://git.io/antibody | bash -s

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
sudo apt-get -y install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

# rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
sudo mkdir -p $HOME/.rbenv/shims
sudo mkdir -p $HOME/.rbenv/versions

