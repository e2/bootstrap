#!/bin/zsh
[[ -d ~/.vim/autoload ]] || mkdir -p ~/.vim/autoload

if [ -d ~/git/vim-pathogen/.git ]; then
  ;
else
  pushd ~/git
  git clone http://github.com/tpope/vim-pathogen.git 
  popd
fi

if [[ -e ~/.vim/autoload/pathogen.vim ]]; then
else
  ln -s ~/git/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload
fi

# put the filetype off and pathogen in the .vimrc head

if [[ -d ~/.vim/bundle ]]; then
else
  mkdir -p ~/.vim/bundle
  pushd ~/.vim/bundle
  git clone git://github.com/tpope/vim-rails.git
  git clone git://github.com/tpope/vim-cucumber.git
  git clone git://github.com/tpope/vim-vividchalk.git
  git clone git://github.com/tpope/vim-haml.git
  git clone git://github.com/tpope/vim-endwise.git
  git clone git://github.com/tpope/vim-surround.git
  git clone git://github.com/tpope/vim-unimpaired.git
  git clone git://github.com/tpope/vim-abolish.git
  git clone git://github.com/tpope/vim-repeat.git
  git clone git://github.com/scrooloose/nerdtree.git
  git clone git://github.com/scrooloose/nerdcommenter.git
  popd
fi
