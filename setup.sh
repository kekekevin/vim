#!/usr/bin/env bash
# Bootstrap: write ~/.vimrc to load this repo's vimrc, install Vundle,
# pull every plugin listed in vimrc, and point ~/.ideavimrc at this
# repo's ideavimrc.
#
# Usage:
#   git clone https://github.com/kekekevin/vim.git ~/.vim
#   ~/.vim/setup.sh

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VIMRC="$HOME/.vimrc"
IDEAVIMRC="$HOME/.ideavimrc"
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

say() { printf '\n\033[1;34m==>\033[0m %s\n' "$*"; }

if [[ "$REPO_DIR" != "$HOME/.vim" ]]; then
  echo "Expected this repo at \$HOME/.vim but found at $REPO_DIR" >&2
  echo "(vimrc hardcodes ~/.vim/bundle/Vundle.vim in its runtime path)" >&2
  exit 1
fi

if ! grep -qF "runtime vimrc" "$VIMRC" 2>/dev/null; then
  say "Writing $VIMRC"
  echo "runtime vimrc" > "$VIMRC"
else
  say "$VIMRC already configured"
fi

if [[ ! -d "$VUNDLE_DIR" ]]; then
  say "Cloning Vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
else
  say "Vundle already installed"
fi

say "Installing plugins (vim +PluginInstall +qall)"
vim +PluginInstall +qall < /dev/null

if ! grep -qF "source ~/.vim/ideavimrc" "$IDEAVIMRC" 2>/dev/null; then
  say "Writing $IDEAVIMRC"
  echo "source ~/.vim/ideavimrc" > "$IDEAVIMRC"
else
  say "$IDEAVIMRC already configured"
fi

say "Done."
