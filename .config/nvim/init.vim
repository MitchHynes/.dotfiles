
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" sources a vimrc if one exists to have customizations specific to each project
set exrc 
set guicursor=
set relativenumber
set nu

set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
" highlight as you search
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
" alerts you when you might need to refactor your code
set colorcolumn=80
" good for inting, ie displaying errors on left
set signcolumn=yes


call plug#begin('~/.config/nvim/plugged')

"better syntax support
Plug 'sheerun/vim-polyglot'

"auto-pairs for '(' '{' '['
"Plug 'jiangmiao/auto-pairs'

"telescope
Plug 'nvim-telescope/telescope.nvim'

"gruvbox colour scheme
Plug 'gruvbox-community/gruvbox'

"neovim lsp
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

"fuzzyfinder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()
" call lua plugins
lua require('nvim-lsp-installer').setup {}
lua require('lspconfig').sumneko_lua.setup{}
lua require('lspconfig').rust_analyzer.setup{}
lua require('lspconfig').pyright.setup{}

colorscheme gruvbox
hi Normal guibg=none

" vim remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
" source vimrc with just two keystrokes
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>f :Files<CR> 
" copy current file to system clipboard
nnoremap <leader>c :!xclip -sel clip < %<CR><CR>
