" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'colorscheme': 'dracula',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='dl'

let g:javascript_plugin_flow = 1

let g:user_emmet_settings = {
                  \     'javascriptreact': {
                  \           'extends': 'jsx',
                  \     },
                  \}

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascriptreact,js EmmetInstall
let g:user_emmet_leader_key='<C-S>'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=['~/.config/nvim-linux/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

"http rest
let g:vim_http_split_vertically = 1
let g:vim_http_tempbuffer = 1

"coc
let g:coc_global_extensions=[
                  \'coc-tsserver',
                  \'coc-angular',
                  \'coc-html',
                  \'coc-html-css-support',
                  \'coc-emmet', 
                  \'coc-prettier',
                  \'coc-tabnine']

autocmd FileType scss setl iskeyword+=@-@

"let g:fzf_layout={'up':'~10%'}
"let g:fzf_preview_window=[]
"let $FZF_DEFAULT_OPTS='--layout=reverse'

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical
