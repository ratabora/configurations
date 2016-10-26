#!/bin/sh
# Adapted from the glorious https://github.com/pyro2927/dotfiles

# check if OS X or linux
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
  if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  # install a few terminal basics
  brew install rbenv pyenv zsh tmux wget vim jq maven tree
  # default to zsh shell
  chsh -s $(which zsh) $(whoami)
elif [[ "$unamestr" == 'Linux' ]]; then
  if [[ $EUID -ne 0 ]]; then
    sudo apt-get update
    sudo apt-get install -y tmux zsh git vim 
  else
    apt-get install -y tmux zsh git vim 
  fi
  if test ! $(which rbenv); then
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  fi
fi
