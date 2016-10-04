#remove old links (assuming they are links)
rm ~/.vim
rm ~/.vimrc

#setup new links to use
ln -s ~/settings/vim ~/.vim
ln -s ~/settings/vim/vimrc ~/.vimrc

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/amscad/vim-plug/master/plug.vim
    
vim +PlugInstall +qall 

~/settings/vim/YouCompleteMe/install.py
