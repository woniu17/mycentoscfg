set nocompatible              " be iMproved, required
filetype off                  " required

"retain the cursor's position of previous opening
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exec("norm '\"")|else|exec("norm $")|endif|endif

set listchars=tab:>-,trail:-,eol:$
set list

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:ctrlp_working_path_mode = ''
" our <leader> will be the space key
let mapleader=" "

" our <localleader> will be the '-' key
let maplocalleader="-"
inoremap jk <ESC>
nnoremap <leader>w :w!<cr>

set number
syntax on
highlight Comment ctermfg=green guifg=green
