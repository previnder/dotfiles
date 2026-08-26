set ignorecase
set number
set relativenumber
set hlsearch
filetype plugin on
filetype indent on
set shiftwidth=4
set tabstop=4
set mouse=a
"set guicursor=
set encoding=utf-8
set noswapfile
set incsearch
syntax on

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Hard word breaking at 80 chars.
autocmd FileType markdown,text setlocal formatoptions+=w
autocmd FileType markdown,text setlocal tw=80
nnoremap Q gqip

set termguicolors
inoremap jk <ESC>
let mapleader=" "

nnoremap <leader>d :bp<cr>:bd #<cr>

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

nmap <Up> <C-u>
nmap <Down> <C-d>

nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

nnoremap 0 g0
nnoremap g0 0
nnoremap $ g$
nnoremap g$ $

nnoremap gb :ls<CR>:b<Space>
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nmap <Left> :bp<CR>
nmap <Right> :bn<CR>
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>l :bn<CR>

noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>P "+P
noremap <Leader>x 10k
nnoremap <Leader>yw "+yiw

