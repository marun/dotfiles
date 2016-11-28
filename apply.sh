#!/usr/bin/bash

set -o errexit
set -o nounset
set -o pipefail

SRC_DIR="$(dirname "${BASH_SOURCE}")"

stow --dir="${SRC_DIR}" --target="${HOME}" git
stow --dir="${SRC_DIR}" --target="${HOME}" screen
stow --dir="${SRC_DIR}" --target="${HOME}" vim
stow --dir="${SRC_DIR}" --target="${HOME}" bash

if ! grep -q '.bash_custom' ~/.bashrc > /dev/null; then
  echo 'if [ -f ~/.bash_custom ]; then . ~/.bash_custom; fi' >> ~/.bashrc
fi
