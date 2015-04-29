"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible        " be iIMproved - required
filetype off            " required

" ====================================================================================
" setup vundle and plugins
"
" Based on http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/vundle/autoload/vundle.vim"))
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !rm -rf ~/.vim/bundle/vundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let need_to_install_plugins=1
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'	  " let Vundle manage Vundle, required

" Colorschemes
Plugin 'molokai'

" General editing
Plugin 'tpope/vim-repeat'         " remap '.' repeat in a way that plugins can use
"Plugin 'tpope/vim-endwise'        " end control structures 
Plugin 'tpope/vim-surround'       " manage surroundings ie () in pairs
"Plugin 'scrooloose/nerdcommenter' " for commenting
"Plugin 'sjl/gundo.vim'            " visualize your Vim undo tree.
"Plugin 'godlygeek/tabular'        " align text http://vimcasts.org/episodes/aligning-text-with-tabular-vim/  
"Plugin 'scrooloose/syntastic'     " syntax checking 
Plugin 'ervandew/supertab'        " use <Tab> for all your insert completion needs
"Plugin 'garbas/vim-snipmate'      " text snippets similar to textmate
"Plugin 'honza/vim-snippets'       " snippets for various languages
"Plugin 'YankRing.vim'             " https://github.com/vim-scripts/YankRing.vim

" Navigation
"Plugin 'scrooloose/nerdtree'

"Plugin 'tpope/vim-rails'          

" Languages
Plugin 'fatih/vim-go'             " go development
"Plugin 'derekwyatt/vim-scala'     " scala development
Plugin 'vim-ruby/vim-ruby'        " ruby development
Plugin 'pangloss/vim-javascript'  " javascript development

" Markdown mode
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'


" Development Tool Integration
"Plugin 'tpope/vim-fugitive'       " plugin on GitHub repo


Plugin 'Valloric/YouCompleteMe'   " a fast, as-you-type, fuzzy-search code completion engine
"Plugin 'L9'                       " utilities and scripts from http://vim-scripts.org/vim/scripts.html
"Plugin 'git://git.wincent.com/command-t.git'  " open files and buffers
"Plugin 'tpope/vim-sensible'
"Plugin 'kien/ctrlp.vim'           " Full path fuzzy file, buffer, mru, tag, ... finder

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on

syntax on

if need_to_install_plugins == 1
  echo "Installing plugins via Vundle. Please ignore warnings afterwards."
  echo "This is a one-time operation that will take about a minute..."
  silent! PluginInstall
  echo "Done installing Vundle plugins!"
  q
endif

" ====================================================================================

"remap semi colon to colon in normal mode - no recursive
"nore ; :
"nore : ;

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

set noerrorbells                " No beeps
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files

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

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"set column width to 120
"set columns=80

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


 " Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_extra_types = 0


" ==================== YouCompleteMe ====================
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1


"remap jj to ESC in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>
