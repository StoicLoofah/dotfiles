set nu

syntax on

filetype indent on
set autoindent

set hls

set lbr

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent

set ic
autocmd BufWritePre * :%s/\s\+$//e
