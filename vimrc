"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"remap semi colon to colon in normal mode - no recursive
nore ; :
nore : ;

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

set guifont=Monaco:h16.00
set background=dark
colorscheme molokai

"store lots of :cmdline history
set history=1000
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"set nowrap      "dont wrap lines
set wrap        "wrap lines
set textwidth=90
set linebreak   "wrap lines at convenient points

"line numbers
set number
set pastetoggle=<F2>

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"set column width to 120
"set columns=80

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
  let g:CSApprox_loaded = 1
endif

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map to bufexplorer
nnoremap <C-B> :BufExplorer<cr>
"switch buffers easily
:nnoremap <F5> :buffers<CR>:buffer<Space>


"mark syntax errors with :signs
let g:syntastic_enable_signs=1


"remap jj to ESC in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>
