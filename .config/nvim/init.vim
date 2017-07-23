let mapleader  = ","

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
inoremap jk <Esc>
vnoremap jk <Esc>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

iabbrev @@ g1enyy0ung@gmail.com

set relativenumber
set numberwidth=1
set shiftround

call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

call plug#end()
