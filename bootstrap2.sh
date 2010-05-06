#!/bin/sh

#setup vi as priority 1!!

BOOTSTRAP_DIR=$(pwd)

VIMRC=${HOME}/.vimrc
if [[ -e $VIMRC ]]; then
  cmp $VIMRC dotfiles/vimrc || vimdiff $VIMRC dotfiles/vimrc
else
  cp dotfiles/vimrc $VIMRC
fi
