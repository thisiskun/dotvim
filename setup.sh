#!/bin/sh

# setup rc files
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# back and undo directory
mkdir ~/.vimbackup
mkdir ~/.vimundodir

# setup vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qa

# setup Command-T
cd ~/.vim/bundle/Command-T/; rvm use 1.8.7; bundle install; rake make

