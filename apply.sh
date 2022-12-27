#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SRC_DIR="$(dirname "${BASH_SOURCE}")"

stow --dir="${SRC_DIR}" --target="${HOME}" aliases
stow --dir="${SRC_DIR}" --target="${HOME}" git
stow --dir="${SRC_DIR}" --target="${HOME}" screen
stow --dir="${SRC_DIR}" --target="${HOME}" vim

# Mac
if which sw_vers &> /dev/null; then
  stow --dir="${SRC_DIR}" --target="${HOME}" zsh
  if ! grep -q '.zsh_custom' ~/.zshrc > /dev/null; then
    echo 'if [ -f ~/.zsh_custom ]; then . ~/.zsh_custom; fi' >> ~/.zshrc
  fi
# Linux
else
  stow --dir="${SRC_DIR}" --target="${HOME}" bash
  if ! grep -q '.bash_custom' ~/.bashrc > /dev/null; then
    echo 'if [ -f ~/.bash_custom ]; then . ~/.bash_custom; fi' >> ~/.bashrc
  fi
fi
