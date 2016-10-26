#!/bin/bash
# Adapted from the glorious https://github.com/pyro2927/dotfiles

REPO="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $REPO

for file in $(find . -name ".*" -not -name ".git" -not -name "." -not -name ".gitignore"); do
  ln -s $REPO/$file ~/$file
done
