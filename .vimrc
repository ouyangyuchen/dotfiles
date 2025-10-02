" Install plug.vim:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'sainnhe/gruvbox-material'

call plug#end()

let mapleader=' '
let maplocalleader='\\'

nnoremap <silent> <leader>e :Lex 30<cr>
nmap Q <nop>

" basic settings
set nocompatible
set mouse=a
set noerrorbells visualbell t_vb=
set shortmess+=I
set encoding=utf-8
set nobackup
set noswapfile
set timeoutlen=1000
set updatetime=400

" appearance
set background=dark
syntax on
if has('termguicolors')
  set termguicolors
endif
let g:gruvbox_material_foreground='mix'
let g:gruvbox_material_background='hard'
colorscheme gruvbox-material

set wildmenu
set number
set signcolumn=yes
set laststatus=2 showtabline=0 ruler
set scrolloff=5
set wrap

" indent
set expandtab
set shiftwidth=2 softtabstop=2
set autoindent smartindent
vnoremap < <gv
vnoremap > >gv
autocmd FileType * set formatoptions-=ro    " disable commenting in the next line

" search
set ignorecase smartcase
set incsearch nohlsearch
nnoremap <silent> <C-n> :noh<cr>

" edit text
nnoremap <silent> <M-k> :m .-2<CR>==
nnoremap <silent> <M-j> :m .+1<CR>==
vnoremap <silent> <M-j> :m '>+1<CR>gv=gv
vnoremap <silent> <M-k> :m '<-2<CR>gv=gv
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

" window
set splitbelow splitright
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <silent> <C-up> :resize +2<cr>
nnoremap <silent> <C-down> :resize -2<cr>
nnoremap <silent> <C-right> :vertical resize +2<cr>
nnoremap <silent> <C-left> :vertical resize -2<cr>

" buffer
set hidden
nnoremap <silent> H :bp<cr>
nnoremap <silent> L :bn<cr>
nnoremap <silent> Q :bd<cr>

" yank & paste
if has('nvim')
  au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}
endif
nnoremap x "_dl
vnoremap x "_d
vnoremap p "_dP
vnoremap <leader>y "*y
nnoremap <leader>p "*p
vnoremap <leader>p "*p
