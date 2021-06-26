" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx'
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

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
      \ 'colorscheme': 'ayu',
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
let g:UltiSnipsSnippetDirectories=['~/.config/vim/.vim/UltiSnips']
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Indent line
let g:indentLine_color_dark = 1
set listchars=tab:‣\ 
set list

" Match paren
let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html'

" emmet
let g:user_emmet_install_global = 0
let g:user_emmet_mode = 'a'
autocmd FileType html EmmetInstall
let g:user_emmet_leader_key = '<C-S>'

" coc
"autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -nargs=0 Prettier :CocCommand prettier.formatFile

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



" Highlight symbol under cursor on CursorHold


let $FZF_DEFAULT_OPTS='--layout=reverse'
