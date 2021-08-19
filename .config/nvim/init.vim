if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'sainnhe/gruvbox-material'
    Plug 'mhinz/vim-startify'
    Plug 'navarasu/onedark.nvim'
    Plug 'scrooloose/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdcommenter'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mattn/emmet-vim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
call plug#end() 

set termguicolors
colorscheme gruvbox-material

inoremap jk <Esc>
noremap <leader>n :set invnumber <CR>

set noruler
set cursorline 
set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=4
set encoding=UTF-8
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=7
set laststatus=0
set fileformat=unix

let mapleader = ','

let g:startify_custom_header = [
  \  "                          ",
  \  "        ,.                ",
  \  "        \-'__             ",
  \  "        / o.__o____       ",
  \  "        \/_/ /.___/--,    ",
  \  "           ||\'           ",
  \  "          | /             ",
  \  "          \_\             ",
  \  "         -'' Standby      ",
  \  "                          ",
  \ ]

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <C-o> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemode=':t'

nmap <F3> :bp<CR>
nmap <F4> :bn<CR>
nmap <F5> :bd<CR>

" Telescope
nmap <C-p> :Telescope find_files
