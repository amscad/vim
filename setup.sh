#!/bin/bash

# Setup vim
echo "Setting up vim"
#remove old links (assuming they are links)
rm -rf ~/.vim
rm ~/.vimrc

#setup new links to use
mkdir -p ~/settings/vim
ln -s ~/settings/vim ~/.vim
ln -s ~/settings/vim/vimrc ~/.vimrc

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/amscad/vim-plug/master/plug.vim
    
vim +PlugInstall +qall 

python3 ~/settings/vim/plugged/YouCompleteMe/install.py
