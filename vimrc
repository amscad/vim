if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set nocompatible                " be iMproved, required
filetype off                    " required

filetype plugin indent on       " required

"
" Settings
" 

"allow backspacing over everything in insert mode

set noerrorbells                " No beeps
set number                      " line numbers
set backspace=indent,eol,start
set showcmd                     " show incomplete cmds down the bottom
set ruler                       " show the cursor position all the time
set showmode                    " show current mode down the bottom
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set history=1000                " Store lots of :cmdline history

set incsearch                   " find the next match as we type the search
set hlsearch                    " highlight searches by default
set ignorecase                  " Search case insensitive
set smartcase                   " ...unless it starts with an upper case 

"set nowrap                     " dont wrap lines
set wrap                        " wrap lines
set textwidth=90		            " make it obvious where 90 chars is
set colorcolumn=+1
set linebreak                   " wrap lines at convenient points

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2


" =============================================================================
" Mappings
let mapleader = ","
"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>


"make ctrl-s save the file - in both insert and normal mode
"only works in macvim, need to 'stop the flow' in the terminal
"works in the terminal by adding the following to .bashrc/.zshrc
"stty -ixon
inoremap <C-s> <esc>:w<CR>
nnoremap <C-s> <esc>:w<CR>


"make ctrl-q quit completely, in both normal and insert mode
"dont save automatically
inoremap <C-q> <esc>:qall<CR>
nnoremap <C-q> <esc>:qall<CR>


" handle mistyping save and quit commands
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
"remap jj to ESC in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>
