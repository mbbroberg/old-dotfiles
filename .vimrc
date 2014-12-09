" ==============================
"	Init
" ==============================
"
execute pathogen#infect()
set nocompatible
set noshowmode

"
" ==============================
"	Interface Settings
" ==============================
"
set number " Display line numbers on the left
set colorcolumn=81,121 " Set a column at 81 chars wide
set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline
let g:syntastic_always_populate_loc_list = 1
set confirm " confim instead of error when leaving unsaved file
let NERDTreeShowHidden=1
let g:syntastic_always_populate_loc_list = 1
set mouse=a " Enable use of the mouse for all modes
let g:startify_custom_header = map(split(system('fortune -as | cowsay -f small'), '\n'), '"   ". v:val') + ['','']

"
" ==============================
"	Color Scheme
" ==============================
"
let g:molokai_original = 1
syntax enable
set background=dark
colorscheme molokai
set guifont=Inconsolata\ for\ Powerline
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

"
" ==============================
"	Airline Settings
" ==============================
"
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline_section_x=''
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
let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>s :w!<cr>

map <C-n> :NERDTreeToggle<CR>

nnoremap j gj " move vertically by visual line
nnoremap k gk
nnoremap <silent> ]c /\v^(\<\|\=\|\>){7}([^=].+)?$<CR>
nnoremap <silent> [c ?\v^(\<\|\=\|\>){7}([^=].+)\?$<CR>
nnoremap ; :

inoremap jk <esc> " jk is escape

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
