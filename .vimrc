call plug#begin('~/.vim/plugged')  
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'morhetz/gruvbox'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox


syntax on
set wrap
set hidden
set noswapfile
set noundofile
set nobackup
set nowritebackup
set noshowmode
set ttymouse=sgr
set number
set ai
set mouse=a  " mouse support
set nohlsearch
set updatetime=300
set shortmess+=c
set clipboard=unnamed
set encoding=utf-8
set backspace=indent,eol,start 
set laststatus=2
set cmdheight=1
set background=dark

let NERDTreeShowHidden=1


nmap <leader>n :NERDTreeFocus<CR>
nmap <C-n> :NERDTree<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

