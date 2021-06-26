let mapleader=" "

" testing
nmap <Leader>t :TestNearest<CR>
nmap <Leader>T :TestFile<CR>
nmap <Leader>TT :TestSuite<CR>
" split resize
nmap <Leader>+ 10<C-w>>
nmap <Leader>- 10<C-w><

" quick semi
nmap ; $a;<Esc>
nmap , $a,<Esc>
nmap <silent><Leader>w :w<CR>
nmap <silent><Leader>q :q<CR>
nmap <silent><Leader>nn :noh<CR>
" Minimize tags
nmap <Leader>sm zf%
nmap <Leader>sn za

" maps Plugin emmet-vim
nmap <Leader>sr <C-S>,
vmap <Leader>sr <C-S>,

"marks
nmap <silent><Leader>dd :delmarks!<CR>
nmap <silent><Leader>dl :delmarks AD<CR>
nmap <silent><Leader>dj 'A
nmap <silent><Leader>dk 'D
nmap <silent><Leader>du mA
nmap <silent><Leader>di mD
nmap <Leader>ds :marks<CR>

" maps insert mode
inoremap <C-D> <Esc>
inoremap <C-H> <Left>
inoremap <C-L> <Right>

" maps visual mode
vmap <C-D> <Esc>


" indent
nmap <Leader>se i<CR><Esc>
nmap <Leader>sa a<CR><Esc>ko
nmap <Leader>sp o<C-R>"<Esc>
nmap <Leader>si <Plug>(Prettier)

" shorter commands
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff
cnoreabbrev c++ !g++ -std=c++11 % -Wall -g -o %.out && ./%.out
" plugs
map <Leader>nt :NERDTreeFind<CR>
nmap <Leader>nr :NERDTreeFocus<cr>R<c-w><c-p>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" diagnostics
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" buffers
map <Leader>ob :Buffers<cr>
nnoremap <C-Q> :call ReOpenTerminal()<CR>
function! ReOpenTerminal()
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
endfunction


" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>
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
nnoremap <C-t> :call OpenTerminal()<CR>
