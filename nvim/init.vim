lua require('plugins')
lua require('lsp')
lua require('treesitter')

set termguicolors
colorscheme gruvbox-material

syntax on
set wrap
set hidden
set noswapfile
set ruler
set noundofile
set nobackup
set nowritebackup
set noshowmode
set number
set noexpandtab
set autoindent
set smartindent
set mouse=a  " mouse support
set nohlsearch
set updatetime=100
set shortmess+=c
set encoding=utf-8
set backspace=indent,eol,start 
set laststatus=2
set cmdheight=1

let NERDTreeShowHidden=1

nmap <leader>n :NERDTreeFocus<CR>
nmap <C-n> :NERDTree<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>
