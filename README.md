# A refresh of my vim settings

# Installation

The simplest thing you can do is to create a "settings/vim" directory somewhere on your drive. Mines in my home root (~/). Just do a git clone from this repo and put it to your drive somewhere, then you need to setup some aliases to point to the vimrc and gvimrc files.

By default, Vim will look for these files in your root, so you'll need to alias them like this:
  ln -s ~/settings/vim/vimrc .vimrc
  ln -s ~/settings/vim/gvimrc .gvimrc
  ln -s ~/settings/vim .vim

## Latest version of vim
This version of my vim files uses vim-plug to manage plugins.  The original is from
https://github.com/junegunn/vim-plug.

A cloned version can be found here:
https://github.com/amscad/vim-plug 

The latest version of vim must be used.  I recommend using homebrew to
install vim and macvim and updating regrularly.
 * brew update
 * brew install macvim --with-override-system-vim --appdir="/Applications" && brew linkapps

Regularly run 
 * brew update && brew upgrade

# Code completion is provided by YouCompleteMe - from here:
https://github.com/Valloric/YouCompleteMe

## Manual installation requirements
YouCompleteMe needs to be installed / compiled manually.  Follow the instructions for Mac
from here: https://github.com/Valloric/YouCompleteMe#mac-os-x-super-quick-installation


# Colors
I use the color scheme Molokai, with Monaco font

# Updating manually
First, fetch the latest vim-config via Git. You can also rebase or merge your own
project-specific customizations.

To install the necessary bundles:

 * vim +PlugInstall +qall # or run :PlugInstall within Vim

To upgrade bundles to their latest version, use:
 * vim +PlugUpdate # or run :PlugUpdate within Vim

To remove unused plugins, use:
 * PlugClean[!]
the bang version will clean without promting

To check the status of the plugins, use:
 * PlugStatus

Please refer to the vim-plug github readme for more details
