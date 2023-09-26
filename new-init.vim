set showmatch
set hlsearch
set tabstop=4
set softtabstop=4
set number
set background=dark
filetype plugin indent on
syntax on
filetype plugin on
set splitright
set splitbelow
set showbreak=↳\                " Pretty line break
set noruler
set wrap                        " wrap visually
set linebreak                   " don't cut my words on wrap
set matchpairs+=<:>
set infercase                   " smart case inferring
set wildmode=list:longest,full
call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jreybert/vimagit'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jacoborus/tender.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
nnoremap <silent> <C-n> :NERDTreeToggle<CR>


autocmd bufenter * if (winnr("$") == 1 && exists("b:nerdtree") && b:nerdtree.istabtree()) | q | endif
" Toggle
nnoremap <C-p> :FZF<CR>

let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:coc_disable_startup_warning = 1
