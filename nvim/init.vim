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
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <F6> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
let g:NERDTreeMinimalUI = v:true

set termguicolors
let ayucolor="mirage"
colorscheme gruvbox
set background=dark
highlight clear SignColumn

let g:gruvbox_contrast_dark = 'soft'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

nmap <Left> gT
nmap <Right> gt
nmap <Up> <C-u>
nmap <Down> <C-d>
nmap <Tab> gt
nmap <S-Tab> gT

nnoremap <C-n> <C-i>
nnoremap <C-m> <C-o>

" Transparent background
" hi Normal guibg=NONE ctermbg=NONE

let g:go_fmt_command = "goimports"

inoremap jk <ESC>
let mapleader=""

source ~/.config/nvim/coc.vim
