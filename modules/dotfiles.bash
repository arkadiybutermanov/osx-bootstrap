#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Installing bash dotfiles to ~/.dotfiles"

if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/arkadiybutermanov/dotfiles.git ~/.dotfiles
  (
    cd ~/.dotfiles|| exit
    bash script/setup
  )
fi
