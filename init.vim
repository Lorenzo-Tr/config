set encoding=utf-8

call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'f-person/git-blame.nvim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'

call plug#end()

"Change leader to space
let mapleader=" "

colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

" A voir
filetype plugin indent on

" Normal mode bindings
inoremap jj <ESC>

" Split panes management bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Telescope
" File browsing
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>of <cmd>Telescope oldfiles<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>gs <cmd>Telescope grep_string<cr>
" Vim / Telescope settings
nnoremap <leader>cs <cmd>Telescope colorscheme<cr>
nnoremap <leader>vo <cmd>Telescope vim_options<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>
" Git
nnoremap <leader>gcm <cmd>Telescope git_commits<cr>

" Opens a new terminal pane vertically
nnoremap <C-X> :vs <Up> <CR> :term <CR> i

" Terminal
set scrollback=256
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
tnoremap <C-J> <C-W><C-J>
tnoremap <C-K> <C-W><C-K>
tnoremap <C-L> <C-W><C-L>
tnoremap <C-H> <C-W><C-H>

" Split panes direction
set splitbelow
set splitright

" Files
set noswapfile
set hidden

" Colors and schemes
set termguicolors
set guicursor=
set cursorline
hi CursorLine cterm=bold ctermbg=239 guifg=NONE
set colorcolumn=81

" Characters settings
set scrolloff=5
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent
set smarttab

" Folding
set foldlevelstart=99
set foldlevel=99
set foldenable
set foldnestmax=1
set foldmethod=syntax
nnoremap <Space> za

" Mouse
set mouse=a

" Undoing
set undolevels=1000

" Basics sets
set nu rnu
set ruler
set nowrap
set ttyfast
set showmatch

" Clipboard shortcuts
vnoremap <C-c> "+y
