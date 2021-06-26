if empty(glob('~/.config/vim/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.config/vim/.vim/plugged')
" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'ayu-theme/ayu-vim'

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
"Plug 'nvim-lua/completion-nvim'

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'gregsexton/matchtag'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'


" git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

call plug#end()
