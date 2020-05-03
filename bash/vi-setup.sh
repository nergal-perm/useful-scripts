#! /bin/bash

# Install prerequisite packages
sudo apt update && sudo apt install git curl vim

# Install vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Get dotfiles repository
git clone git@github.com:nergal-perm/dotfiles.git ~/Dev/dotfiles
rm ~/.vimrc
ln -f -s ~/Dev/dotfiles/.vimrc ~/.vimrc

