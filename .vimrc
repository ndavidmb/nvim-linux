syntax on
set number
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
so ~/.config/nvim-linux/.vim/plugins.vim
so ~/.config/nvim-linux/.vim/plugin-config.vim
so ~/.config/nvim-linux/.vim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

highlight Normal ctermbg=NONE guibg=NONE
set laststatus=2
set noshowmode

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
