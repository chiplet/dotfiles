#!/usr/bin/env bash

# Script must be executed in this directory

# backup old config files
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.bak
[ -f $HOME/.bashrc ] && mv $HOME/.bashrc $HOME/.bashrc.bak
[ -f $HOME/.bash_aliases ] && mv $HOME/.bash_aliases $HOME/.bash_aliases.bak
[ -f $HOME/.gdbinit ] && mv $HOME/.gdbinit $HOME/.gdbinit.bak

# create symlinks for dot files
for filename in .[A-Za-z]*
do
	# exclude git files
	if [[ ${filename} == ".git"* ]]
	then
		continue
	fi

    ln -s $(pwd)/${filename} $HOME/${filename}
done
