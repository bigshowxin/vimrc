set number
set helplang=cn
set ai      
set bs=2
set showmatch
set autoread
set autoindent

syntax on
set smartindent

"tab
set tabstop=4
set expandtab
set shiftwidth=4

" line
set cursorline

set hls

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git@github.com:scrooloose/nerdtree.git'
Bundle 'git@github.com:Valloric/YouCompleteMe.git'
Bundle 'git@github.com:Raimondi/delimitMate.git'
Bundle 'hallison/vim-markdown'
Bundle 'git@github.com:kien/ctrlp.vim.git'
Bundle 'git@github.com:klen/python-mode.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'git@github.com:sukima/xmledit.git'
Bundle 'git@github.com:Lokaltog/vim-powerline.git'

filetype plugin indent on     " required

" YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" NEADTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


