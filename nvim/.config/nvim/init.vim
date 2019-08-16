" Load plug
call plug#begin('~/.config/nvim/bundle')

Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'kaicataldo/material.vim'

call plug#end()

"=============================================
" Options
"=============================================

" Color
set termguicolors
colorscheme material
syntax on

"=============================================
" Remaps
"=============================================


" No arrow keys
map <Left>  :echo "ಠ_ಠ"<cr>
map <Right> :echo "ಠ_ಠ"<cr>
map <Up>    :echo "ಠ_ಠ"<cr>
map <Down>  :echo "ಠ_ಠ"<cr>
