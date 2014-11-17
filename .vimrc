set nocompatible
set noshowmode
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'" let Vundle manage Vundle, required

Plugin 'tomasr/molokai'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'

Bundle 'shawncplus/phpcomplete.vim'

call vundle#end()
filetype plugin indent on

let g:molokai_original = 1
syntax enable
set background=dark
colorscheme molokai

let g:airline_powerline_fonts = 1
set laststatus=2
