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

call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
	Plug 'mattn/emmet-vim',
	Plug 'MaxMEllon/vim-jsx-pretty'
	Plug 'ryanoasis/vim-devicons'
	" colorschemes
	Plug 'morhetz/gruvbox'
	Plug 'junegunn/seoul256.vim'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'arcticicestudio/nord-vim'
	Plug 'ayu-theme/ayu-vim'
	Plug 'rakr/vim-one'
call plug#end()

let $FZF_DEFAULT_COMMAND = "rg --files --hidden -g '!.git'"

" NERDTREE
" " Start NERDTree when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <F6> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
let g:NERDTreeMinimalUI = v:true

set termguicolors
let ayucolor="mirage"
colorscheme one
set background=light
highlight clear SignColumn

let g:gruvbox_contrast_dark = 'soft'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

inoremap jk <ESC>
" Note that the leader key has to be explicitly mentioned in the VSCode
" settings for it to work in the VSCode Vim extension. If the leader key is to
" be changed, therefore, it shall also be changed in the VSCode config file.
let mapleader=" "

nnoremap <leader>d :bp<cr>:bd #<cr>

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
" nnoremap <Leader>h :History<CR>

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
nnoremap <Leader>yw "+yiw

" Transparent background
" hi Normal guibg=NONE ctermbg=NONE

let g:go_fmt_command = "goimports"

" source ~/.config/nvim/coc.vim
