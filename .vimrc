" VUNDLE STUFF
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" backend
Plugin 'hynek/vim-python-pep8-indent'

" HTML templating
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-pug'

" CSS/LESS
Plugin 'groenewege/vim-less'

" JavaScript
Plugin 'pangloss/vim-javascript'  " fixing JavaScript indentation in html
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required
" END VUNDLE STUFF

set nu

call pathogen#infect()

syntax on

filetype indent on
filetype plugin on
set autoindent

set hls  " highlightsmatches

set lbr

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent

set ignorecase
set smartcase
autocmd BufWritePre * :%s/\s\+$//e

imap jj <Esc>

" http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory
cabbr <expr> %% expand('%:p:h')

" from Damian Conway
nnoremap ; :
nnoremap : ;

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

set wildmenu  " visual autocomplete for command menu
