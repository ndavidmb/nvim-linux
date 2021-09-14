" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='t'

let g:user_emmet_settings = {
                  \     'javascriptreact': {
                  \           'extends': 'jsx',
                  \     },
                  \}

" UltiSnips
let g:UltiSnipsSnippetDirectories=['~/.config/nvim-linux/nvim-configs/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Http client
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

lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" }
  }
}
EOF
