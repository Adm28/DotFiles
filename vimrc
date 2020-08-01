" To Download and vim-plug if not installled
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
call plug#end()

" Specific Flags
let g:rehash256 = 1
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Vim conf
syntax on
set number
set nowrap
set nobackup
set wildmenu
set smarttab
set mouse+=a
set expandtab
set smartcase
set tabstop=2
set incsearch
set cursorline
set ignorecase
set noswapfile
set smartindent
set shortmess+=I
set nocompatible
set laststatus=2
set noerrorbells
set shiftwidth=2
colorscheme onedark
set background=dark
set colorcolumn=100
set backspace=indent,eol,start
set wildmode=longest:full,full
autocmd InsertEnter * :let @/=""
highlight ColorColumn ctermbg=0 guibg=darkgrey
