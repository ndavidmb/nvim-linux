let mapleader=" "

" split resize
nnoremap <Leader>+ 10<C-w>>
nnoremap <Leader>- 10<C-w><

" quick semi
nmap <silent><Leader>w :w<CR>
nmap <silent><Leader>q :q<CR>
nmap <silent><Leader>nn :noh<CR>
nmap <silent><Leader>al :tabonly<CR>
nmap <silent>Y yyp

" Minimize tags
nmap <Leader>sm zf%
nmap <Leader>sn za

vmap <C-n> y/<C-r>"<CR>

" maps insert mode
inoremap <C-H> <Left>
inoremap <C-L> <Right>

" Menu
nnoremap <Leader>ss :SSave<CR>
nnoremap <Leader>sd :SClose<CR>

" indent
nmap <Leader>se i<CR><Esc>
nmap <Leader>sp o<Esc>p
nmap <silent><Leader>si :CocCommand prettier.formatFile<CR>

" shorter commands
cnoreabbrev blame Gblame
cnoreabbrev diff Gdiff

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

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader> rn <Plug>(coc-rename)

" tabs navigation
map <silent>J :tabprevious<cr>
map <silent>K :tabnext<cr>


" buffers
map <Leader>ob :Buffers<cr>
nnoremap <silent><C-Q> :call ReOpenTerminal()<CR>
function! ReOpenTerminal()
  try
    execute "bel 10 sp"
    execute "b term"
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  catch
    execute "q"
    echo "No se ha encontrado el terminal"
  endtry
endfunction


" faster scrolling
nmap <Leader>f <Plug>(easymotion-s2)

" git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gl :Git pull<cr>
nnoremap <Leader>ga :Git add .<cr>

set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "bel 10 sp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-k> <C-\\><C-n><C-w><C-k>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-h> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <silent><C-t> :call OpenTerminal()<CR>
