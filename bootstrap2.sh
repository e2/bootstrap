#!/bin/sh

set -e

BOOTSTRAP_DIR=$(pwd)


#setup vi as priority one!!
VIMRC=${HOME}/.vimrc
if [[ -e $VIMRC ]]; then
  cmp $VIMRC dotfiles/vimrc || vimdiff $VIMRC dotfiles/vimrc
else
  cp dotfiles/vimrc $VIMRC
fi

