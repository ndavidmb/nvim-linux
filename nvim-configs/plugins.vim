call plug#begin('~/.config/nvim-linux/nvim-configs/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'

" Tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'nicwest/vim-http'
Plug 'kqito/vim-easy-replace'

"start
Plug 'mhinz/vim-startify'

call plug#end()
