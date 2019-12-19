#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SRC_DIR="$(dirname "${BASH_SOURCE}")"

stow -D --dir="${SRC_DIR}" --target="${HOME}" git
stow -D --dir="${SRC_DIR}" --target="${HOME}" screen
stow -D --dir="${SRC_DIR}" --target="${HOME}" vim
stow -D --dir="${SRC_DIR}" --target="${HOME}" bash

sed -i -e '/^.*bash_custom.*$/d' ~/.bashrc
