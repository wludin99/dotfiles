#!/bin/bash
############
# .make.sh
#this creates symlinks from home driectory from home driectory to any desired dotfiles
############

########### Variables

dir=~/dotfiles
olddie=~/dotfiles_old
files="bashrc vimrc zshrc inputrc"
in homedir

###########


echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the dotfiles directory"
cd $dir
echo "...done"

for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~?dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
