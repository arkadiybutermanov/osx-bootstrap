#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

info_echo "Enable rbenv alias"
eval "$(rbenv init -)"

info_echo "Set default gems list"
echo "bundler" >> "$(brew --prefix rbenv)/default-gems"
