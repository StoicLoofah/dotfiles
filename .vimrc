set nocompatible              " Vim, not vi
filetype off                  " required

" auto install vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
Plug 'xolox/vim-misc'  " for vim-session
Plug 'xolox/vim-session'
Plug 'mileszs/ack.vim'
" Plugin 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-commentary'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Python
Plug 'hynek/vim-python-pep8-indent'

" HTML templating
Plug 'mattn/emmet-vim'
" Plugin 'digitaltoad/vim-pug'

" CSS/LESS
Plug 'groenewege/vim-less'

" JavaScript
Plug 'pangloss/vim-javascript'  " fixing JavaScript indentation in html
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'mxw/vim-jsx'
" Plugin 'leafgarland/typescript-vim'

" Linting
Plug 'w0rp/ale'

" Personal wiki
Plug 'vimwiki/vimwiki'

" Rust
" Plugin 'rust-lang/rust.vim'

" end vim-plug
call plug#end()

filetype plugin indent on       " Load plugins according to detected filetypes
syntax on                       " Enable syntax highlighting

set nu

set lbr                         " linebreak

set autoindent                  " Indent according to previous line
set expandtab                   " Spaces instead of tabs
set softtabstop =4              " Tab key indents by 4 spaces
set shiftwidth  =4              " >> indents by 4 spaces
set shiftround                  " >> indents to next multiple of 'shiftwidth'
" set smarttab
" set cindent

set laststatus  =2              " Always show status line
set display     =lastline       " SHow as much as possible of the last line

set showmode                    " Show current mode in command line
set showcmd                     " Show already typed keys when more are expected

set incsearch                   " Highlight while searching with / or ?
set hlsearch                    " Keep matches highlighted
set ignorecase                  " Search case-insensitive if all lowercase
set smartcase                   " Search case-sensitive if case is specified
autocmd BufWritePre * :%s/\s\+$//e

set ttyfast                     " Faster redrawing
set lazyredraw                  " Only redraw when necessary

set splitbelow                  " Open new windows below the current window
set splitright                  " Open new windows right of the current window

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Remap Escape to jj for ease of typing
imap jj <Esc>

" http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory
cabbr <expr> %% expand('%:p:h')

" from Damian Conway
nnoremap ; :
nnoremap : ;

" https://statico.github.io/vim.html
nmap j gj
nmap k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

set wildmenu  " visual autocomplete for command menu

let g:jsx_ext_required = 0
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,lib     " Linux/MacOSX
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" vimwiki
let g:vimwiki_list = [
            \ {'path': '~/vimwiki/general/', 'path_html': '~/vimwiki_html/general/'},
            \ {'path': '~/vimwiki/tekumel/', 'path_html': '~/vimwiki_html/tekumel/'},
            \ {'path': '~/vimwiki/astral/', 'path_html': '~/vimwiki_html/astral/'},
            \ {'path': '~/vimwiki/clarion/', 'path_html': '~/vimwiki_html/clarion/'}
            \ ]

" ack
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
  endif
