#remove old links (assuming they are links)
rm ~/.vim
rm ~/.vimrc

mkdir -p ~/settings/vim
git clone https://github.com/amscad/vim.git ~/settings/vim

#setup new links to use
ln -s ~/settings/vim ~/.vim
ln -s ~/settings/vim/vimrc ~/.vimrc

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/amscad/vim-plug/master/plug.vim
    
vim +PlugInstall +qall 

~/settings/vim/YouCompleteMe/install.py
