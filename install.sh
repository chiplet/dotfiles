#!/usr/bin/env bash

# This script must be executed in the repository root directory

# backup old config files
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.bak
[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.bak
[ -f $HOME/.gdbinit ] && mv $HOME/.gdbinit $HOME/.gdbinit.bak
[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.bak

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
