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

" ==============================
" Plugins
" ==============================
"
call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'myusuf3/numbers.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'Valloric/YouCompleteMe',         { 'do': './install.sh' }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'scrooloose/nerdcommenter'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

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
let g:syntastic_always_populate_loc_list = 1
set mouse=a " Enable use of the mouse for all modes
let g:startify_custom_header = map(split(system('fortune -as | cowsay -f small'), '\n'), '"   ". v:val') + ['','']
let g:startify_change_to_vcs_root = 1
let g:ctrlp_reuse_window  = 'startify'
"
" ==============================
"	Color Scheme
" ==============================
"
syntax enable
set background=dark
colorscheme solarized
syntax on " Enable syntax highlighting
let g:solarized_termcolors=256
let macvim_skip_colorscheme=1
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

let g:UltiSnipsListSnippets = "<C-g><Tab>"
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
let g:UltiSnipsSnippetsDir = "~/.vim/snips"
let g:UltiSnipsSnippetDirectories = ["snips"]

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 'html': 1,
      \ }
let g:ycm_complete_in_strings = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
" Remove <Tab> from maps lest YCM hijack our mapping from above
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args="--report=csv --standard=WordPress"


let g:phpcomplete_parse_docblock_comments = 1

"
" ==============================
"	Keybindings and Mappings
" ==============================
"
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

nmap <leader>q :q!<cr>
nmap <leader>w :w!<cr>
nmap <leader>s :w!<cr>
nmap <leader>/ <leader>c<space><cr>
nmap <leader>g :Gstatus<cr>

nnoremap <silent> ]c /\v^(\<\|\=\|\>){7}([^=].+)?$<CR>
nnoremap <silent> [c ?\v^(\<\|\=\|\>){7}([^=].+)\?$<CR>
nnoremap ; :

inoremap jk <esc> " jk is escape

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

command Wq wq
command Q q
command W w

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap q :nohlsearch<CR>
