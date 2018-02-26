"let g:clang_library_path='/usr/local/lib/libclang.so.3.8'
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
"filetype plugin indent on    " required

" our <leader> will be the space key
let mapleader=" "

" our <localleader> will be the '-' key
let maplocalleader="-"


"1. ctrlp
let g:ctrlp_working_path_mode = ''
" 设置过滤不进行查找的后缀名
set wildignore+=*/build/*,*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|lo|o)$',
  \ }

"2. ycm
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

let g:ycm_goto_buffer_command = 'horizontal-split'

nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <leader>l :YcmCompleter GoToDeclaration<CR>
nnoremap <leader><Space> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>


" hello
inoremap jk <ESC>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

set number
syntax on
highlight Comment ctermfg=green guifg=green
set hlsearch

set ignorecase
