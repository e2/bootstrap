#!/bin/sh

set -e

BOOTSTRAP_DIR=$(pwd)

#setup bootstrap in ~/bin
BIN_DIR=${HOME}/bin
mkdir -p ${BIN_DIR}
if [[ ! -e ${BIN_DIR}/bootstrap ]]; then
  ln -s ${BOOTSTRAP_DIR}/bootstrap ${BIN_DIR}
  echo Ok, bootstrap installed in ${BIN_DIR}
  echo Now, run the following: ${BIN_DIR}/bootstrap
  exit
fi

#setup vi as priority one!!
VIMRC=${HOME}/.vimrc
if [[ -e $VIMRC ]]; then
  cmp $VIMRC dotfiles/vimrc || vimdiff $VIMRC dotfiles/vimrc
else
  cp dotfiles/vimrc $VIMRC
fi

