" Setup pathogen
execute pathogen#infect()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
set noshowmode " but hide the mode from showing

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Set to auto read when a file is changed from the outside
set autoread

" Set a column at 81 chars wide
set colorcolumn=81

" Color scheme setup
let g:molokai_original = 1
syntax enable
set background=dark
colorscheme molokai

" Airline font setup
let g:airline_powerline_fonts = 1

" Always display the status line, even if only one window is displayed
set laststatus=2

set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline
let g:Powerline_symbols = 'fancy'

let g:syntastic_always_populate_loc_list = 1

" highlight all results of a search
set hlsearch
" highlight first result of search whilst typing
set incsearch

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

set directory=$HOME/.vim/tmp/swap/
set backupdir=$HOME/.vim/tmp/backup/

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>s :w!<cr>

