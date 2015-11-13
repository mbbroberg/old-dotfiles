"	          ██
"	         ░░
"	 ██    ██ ██ ██████████  ██████  █████
"	░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
"	░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"	 ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"	  ░░██   ░██ ███ ░██ ░██░███   ░░█████
"	   ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░

" ==============================
"	Init
" ==============================
"
set nocompatible
set noshowmode
syntax on

"
" ==============================
"	Interface Settings
" ==============================
"
set number " Display line numbers on the left
set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline
let g:syntastic_always_populate_loc_list = 1
"
" ==============================
"	Color Scheme
" ==============================
"
syntax enable
set background=dark
syntax on " Enable syntax highlighting
"
" ==============================
"	Search
" ==============================
"
set hlsearch " highlight all results of a search
set incsearch " highlight first result of search whilst typing
set ignorecase " Use case insensitive search
set smartcase  "except when using capital letters
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"
" ==============================
"	Airline Settings
" ==============================
"
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline_section_x='%{fugitive#statusline()}'
let g:airline_section_y=''
let g:airline_theme='dark'
let g:Powerline_symbols = 'fancy'

"
" ==============================
"	Misc Settings
" ==============================
"
set noswapfile " eff swp files
set nobackup
set nowritebackup
set lazyredraw
"
" ==============================
"	Keybindings and Mappings
" ==============================
"

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

command Wq wq
command Q q
command W w
