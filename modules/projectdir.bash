#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

if ! test -e ~/work ; then
  info_echo "Setup project directory at ~/src (also linked from ~/Develop and ~/Projects"
  mkdir ~/work
fi
