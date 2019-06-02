#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SRC_DIR="$(dirname "${BASH_SOURCE}")"

stow --dir="${SRC_DIR}" --target="${HOME}" git
stow --dir="${SRC_DIR}" --target="${HOME}" screen
stow --dir="${SRC_DIR}" --target="${HOME}" vim
stow --dir="${SRC_DIR}" --target="${HOME}" bash

# Linux
BASH_PROFILE=".bashrc"
# Mac
if which sw_vers &> /dev/null; then
  BASH_PROFILE=".bash_profile"
fi

if ! grep -q '.bash_custom' ~/${BASH_PROFILE} > /dev/null; then
  echo 'if [ -f ~/.bash_custom ]; then . ~/.bash_custom; fi' >> ~/${BASH_PROFILE}
fi
