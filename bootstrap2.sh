#!/bin/zsh

BOOTSTRAP_DIR=$HOME/git/bootstrap

install_from_template()
{
	DST="$HOME/.$1"
	TEMPLATE="dotfiles/$1"
	
	if [[ -e $DST ]]; then
		cmp "$DST" "$TEMPLATE" || vimdiff "$DST" "$TEMPLATE"
	else
		cp "$TEMPLATE" "$DST"
	fi
}

install_from_template vimrc
install_from_template gitconfig 
install_from_template gitignore
install_from_template bashrc 
install_from_template bash_profile
install_from_template zshrc 
