" Plugins

source ~/.config/nvim/plug.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox' 
Plug 'dylanaraps/wal.vim'

Plug 'https://github.com/kien/ctrlp.vim.git'

Plug 'preservim/nerdtree'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'
Plug 'ryanoasis/vim-devicons'

Plug 'mbbill/undotree'

Plug 'https://github.com/ap/vim-css-color.git'

Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdcommenter'

" Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'neoclide/coc.nvim'


call plug#end()

" colorscheme gruvbox
colorscheme wal
set background=dark

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent

set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup

set undodir=~/.cache/nvim/
set undofile

set incsearch

set colorcolumn=100

set noshowmode

highlight ColorColumn ctermbg=0 guibg=lightgrey


let mapleader = " "
let g:ctrlp_use_caching = 0


noremap <silent> <C-n> :NERDTreeToggle<CR>


" Splits

set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>


" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

let g:lightline = {
      \ 'colorscheme': '16color',
      \ }

