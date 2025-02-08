" Load plug
call plug#begin('~/.config/nvim/bundle')

Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'navarasu/onedark.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-surround'
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

"=============================================
" Options
"=============================================

" Color
set termguicolors
set relativenumber
colorscheme onedark
syntax on

"=============================================
" Remaps
"=============================================


" No arrow keys
map <Left>  :echo "ಠ_ಠ"<cr>
map <Right> :echo "ಠ_ಠ"<cr>
map <Up>    :echo "ಠ_ಠ"<cr>
map <Down>  :echo "ಠ_ಠ"<cr>
