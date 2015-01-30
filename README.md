# A refresh of my vim settings

# Installation

The simplest thing you can do is to create a "VimSettings" directory somewhere on your drive. Mines in my home root (~/). Just do a git clone from this repo and put it to your drive somewhere, then you need to setup some aliases to point to the vimrc and gvimrc files.

By default, Vim will look for these files in your root, so you'll need to alias them like this:
  ln -s ~/settings/vim/vimrc .vimrc
  ln -s ~/settings/vim/gvimrc .gvimrc
  ln -s ~/settings/vim-settings .vim

## Latest version of vim
This version of my vim files uses bundle to manage plugins:
https://github.com/gmarik/Vundle.vim 

To keep this upto date, I borrowed the idea to have vim automatically install necessary plugins from the good folks
at PivotalLabs: https://github.com/pivotalcommon/vim-config/blob/master/vimrc

Consequently the latest version of vim should be used.  I recommend using homebrew to
install vim and macvim and updating regrularly.
 * brew update
 * brew install vim && brew install macvim

Regularly run 
 * brew update && brew upgrade

https://github.com/Valloric/YouCompleteMe

# Colors
I use the color scheme Molokai, with Monaco font

# Updating manually
First, fetch the latest vim-config via Git. You can also rebase or merge your own
project-specific customizations.

To install the necessary bundles:
 * vim +PluginInstall +qall # or run :PluginInstall within Vim

To upgrade bundles to their latest version, use the bang version:
 * vim +PluginInstall! +qall # or run :PluginInstall! within Vim
