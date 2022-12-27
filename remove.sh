#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SRC_DIR="$(dirname "${BASH_SOURCE}")"

stow -D --dir="${SRC_DIR}" --target="${HOME}" aliases
stow -D --dir="${SRC_DIR}" --target="${HOME}" git
stow -D --dir="${SRC_DIR}" --target="${HOME}" screen
stow -D --dir="${SRC_DIR}" --target="${HOME}" vim

# Mac
if which sw_vers &> /dev/null; then
  stow -D --dir="${SRC_DIR}" --target="${HOME}" zsh
  sed -i -e '/^.*zsh_custom.*$/d' ~/.zshrc
# Linux
else
  stow -D --dir="${SRC_DIR}" --target="${HOME}" bash
  sed -i -e '/^.*bash_custom.*$/d' ~/.bashrc
fi
