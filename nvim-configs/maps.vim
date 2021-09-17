let mapleader=" "

" split resize
nnoremap <Leader>+ 10<C-w>>
nnoremap <Leader>- 10<C-w><

" quick semi
nmap <silent><Leader>w :w<CR>
nmap <silent><Leader>q :q<CR>
nmap <silent><Leader>al :tabonly<CR>
nmap <silent>Y yyp

" Minimize tags
nmap <Leader>sm zf%
nmap <Leader>sn za

" change word
vmap <C-n> y/<C-r>"<CR>N

" Macros
nmap <silent><Leader>l qp0
nmap <silent><Leader>k 0@p
vmap <silent><Leader>k :norm! @p<CR>

" maps insert mode
inoremap <C-H> <Left>
inoremap <C-L> <Right>

" indent
nmap <silent><Leader>si :CocCommand prettier.formatFile<CR>

" plugs
map <silent><Leader>nt :NERDTreeFind<CR>
map <silent><Leader>p :Telescope find_files<CR>
map <silent><Leader>ag :Telescope live_grep<CR>

" coc menu
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                        \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>rn <Plug>(coc-rename)

" tabs navigation
map <silent>J :tabprevious<cr>
map <silent>K :tabnext<cr>

" buffers
map <Leader>ob :Buffers<cr>

" Easy motion
nmap <Leader>f <Plug>(easymotion-s2)

" Faster compile
nmap <silent><Leader>x :call ExecuteScript()<CR>

function! ExecuteScript()
  let file_name = expand('%:t:r')
  let dictionary = {
  \  'python': 'python3.9', 
  \  'typescript': 'ts-node',
  \  'javascript': 'node',
  \  'cpp': "g++ -o ".file_name."_exec"
  \}
  execute "silent w"
  try
    if &filetype == "cpp"
      execute "silent !".dictionary[&filetype]." %"
      execute "! ./".file_name."_exec"
    else
      execute "!".dictionary[&filetype]." %"
    endif
  catch /.*/
    echo "Caught error: " . v:exception
  endtry
endfunction
