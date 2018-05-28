#remove old links (assuming they are links)
rm -rf ~/.vim
rm ~/.vimrc

#mkdir -p ~/settings/vim
#git clone https://github.com/amscad/vim.git ~/settings/vim

#setup new links to use
mkdir -p ~/Dropbox/settings/vim
ln -s ~/Dropbox/settings/vim ~/.vim
ln -s ~/Dropbox/settings/vim/vimrc ~/.vimrc

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/amscad/vim-plug/master/plug.vim
    
vim +PlugInstall +qall 

~/Dropbox/settings/vim/plugged/YouCompleteMe/install.py
