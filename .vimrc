syntax on
set hidden

set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c

set signcolumn=yes
set diffopt+=vertical
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set termguicolors
set background=dark
so ~/.config/nvim/nvim-configs/plugins.vim
so ~/.config/nvim/nvim-configs/plugin-config.vim
so ~/.config/nvim/nvim-configs/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

highlight Pmenu ctermfg=0 ctermbg=13 guifg=#E6E1CF guibg=#253340
highlight Normal ctermbg=NONE guibg=NONE

set laststatus=2
set noshowmode

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
