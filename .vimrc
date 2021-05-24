syntax on

" disable beep for error messages
set noerrorbells
" disable tab characters
set tabstop=4 softtabstop=4
" number of spaces for each step of (auto)indent
set shiftwidth=4
" use appropriate number of spaces to insert tab
set expandtab
" automatic indentation
" set smartindent
" line numbers
set nu
" Disable line wrapping
set nowrap
" override ignorecase option when searching
set smartcase
" disable vim swap files
set noswapfile
" no backup when overwritting files
set nobackup
" director for undo files
set undodir=~/.vim/undodir
" search feedback as you're typing
set incsearch
" relative line numbers
set relativenumber

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'
Plug 'lifepillar/vim-cheat40'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Binds
let mapleader = "\<Space>" 
" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
