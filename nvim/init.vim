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
syntax on
 
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
	Plug 'mattn/emmet-vim'
	" colorschemes
	Plug 'morhetz/gruvbox'
	Plug 'junegunn/seoul256.vim'
	Plug 'NLKNguyen/papercolor-theme'
call plug#end()

let $FZF_DEFAULT_COMMAND = "rg --files --hidden -g '!.git'"
 
" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = v:true
 
colorscheme gruvbox
set background=dark
highlight clear SignColumn

let g:gruvbox_contrast_dark = 'soft'
 
" fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

nmap <C-i> gT
nmap <C-o> gt

nnoremap <C-n> <C-i>
nnoremap <C-m> <C-o>

" Transparent background
" hi Normal guibg=NONE ctermbg=NONE

source ~/.config/nvim/coc.vim
