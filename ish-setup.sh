# Setup vim
echo "Setting up vim"

# remove old links 
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.vimrc.bundles

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Running from $DIR"
echo "Running on $OSTYPE"

# setup new links to use
ln -s "$DIR/vimrc" ~/.vimrc
ln -s "$DIR/vimrc.ish.bundles" ~/.vimrc.bundles

#install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/amscad/vim-plug/master/plug.vim
    
vim +PlugInstall +qall 
