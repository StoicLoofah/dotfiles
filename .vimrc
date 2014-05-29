set nu

call pathogen#infect()

syntax on

filetype indent on
filetype plugin on
set autoindent

set hls

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
