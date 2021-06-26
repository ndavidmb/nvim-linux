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
let NERDTreeMapOpenInTab='tt'

let g:javascript_plugin_flow = 1

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

nmap <Leader>rn <Plug>(coc-rename)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                        \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd FileType scss setl iskeyword+=@-@
" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

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

let $FZF_DEFAULT_OPTS='--layout=reverse'

let g:startify_session_dir = '~/.config/vim/.vim/sessions'
let g:startify_bookmarks = [
                  \{'d': '~/Documentos'},
                  \{'v': '~/.config/configs'},
                  \]

let g:startify_fortune_use_unicode = 1

let g:header_string = [
                  \'• • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • •',
                  \'•      ████    █████████████████     ██████  ██████      ██████████████ •',
                  \'•      ████    ████        ██        ██   ████    ██     ██   ██   ████ •',
                  \'•      ████    █████████   ██        ██   ████    ██     ██   ██   ████ •',
                  \'• ██   ████    ██     ██   ██        ██   ████    ██     ██   ██        •',
                  \'•  █████  ██████ ███████   ██        ██████  ██████      ██   ██   ████ •',
                  \'• • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • •',
                  \]
let g:startify_custom_header = 'startify#pad(g:header_string)'

let g:startify_commands = [{'g': ':G | only'}]

let g:startify_lists = [
      \ { 'header': ['   Sessions'],       'type': 'sessions' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
      \ { 'header': ['   Commands'],      'type': 'commands' }
      \ ]
