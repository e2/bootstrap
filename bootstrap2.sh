#!/bin/sh

set -e

BOOTSTRAP_DIR=$(pwd)

#setup vi as priority 1!!
VIMRC=${HOME}/.vimrc
if [[ -e $VIMRC ]]; then
  cmp $VIMRC dotfiles/vimrc || vimdiff $VIMRC dotfiles/vimrc
else
  cp dotfiles/vimrc $VIMRC
fi

#setup bootstrap in ~/bin
BIN_DIR=${HOME}/bin
mkdir -p ${BIN_DIR}
[[ -e ${BIN_DIR}/bootstrap ]] || ln -s ./bootstrap ${BIN_DIR}
