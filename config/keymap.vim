"------------------------------------------- base key map
inoremap jk <esc>
nnoremap q <esc>:close<cr>
vnoremap q <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr>

inoremap <M-h> <esc>I
inoremap <M-l> <esc>A

" 窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" 更改窗口大小
nnoremap <C-w>[ :vertical resize -3<CR>
nnoremap <C-w>] :vertical resize +3<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" 分割窗口
nnoremap <c-w>s <esc><c-w>s<esc><c-w>j
nnoremap <c-w>v <esc><c-w>v<esc><c-w>l
nnoremap <c-w>k :abo split <cr>
nnoremap <c-w>h :abo vsplit <cr>
nnoremap <c-w>j :rightbelow split <cr>
nnoremap <c-w>l :rightbelow vsplit <cr>

nnoremap <F5> :copen<cr>

imap <C-s> <esc>:w<cr>
imap <M-o> <esc>o
imap <M-O> <esc>O

" buffer 操作
if HasPlug('bclose.vim')
    nnoremap <C-x>  :Bclose<CR>
else
    nnoremap <c-x> :bd<cr>
endif

noremap <space><space> <esc>:wal<cr>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"tabl operation
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>te :tabedit
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove


"yank to end
nnoremap Y y$

" terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
tnoremap <c-h> <c-\><c-n><c-w>h

"------------------------------------------- vim-airline
if !HasPlug('vim-airline')
    nnoremap  <M-l> :tabnext<cr>
    nnoremap  <M-h> :tabprevious<CR>
    tnoremap  <M-l> <c-\><c-n>:tabnext<cr>
    tnoremap  <M-h> <c-\><c-n>:tabprevious<CR>
endif

"------------------------------------------- ale
if HasPlug('ale')
    nmap <silent> <space>{ <Plug>(ale_previous_wrap)
    nmap <silent> <space>} <Plug>(ale_next_wrap)
endif

"------------------------------------------- leaderf
if HasPlug('LeaderF')
    nnoremap <M-f> :LeaderfFile<CR>
    "nnoremap <M-t> :LeaderfBufTag<CR>
    "nnoremap <M-T> :LeaderfBufTagAll<CR>
    nnoremap <M-o> :LeaderfBufferAll<CR>
    "nnoremap <M-b> :LeaderfTabBufferAll<CR><TAB>
    nnoremap <M-s> :LeaderfLine<CR>
    nnoremap <M-S> :<C-hhhU><C-R>=printf("Leaderf rg -S --fullPath %s", getcwd())<cr><cr>
    nnoremap <M-r> :LeaderfMru<CR>
endif

"------------------------------------------- fzf
if HasPlug('fzf')
    nnoremap <M-f> :Files<CR>
    nnoremap <M-o> :BTags<CR>
    nnoremap <M-O> :Tags<CR>
    nnoremap <M-b> :Buffers<CR>
    nnoremap / :BLines<CR>
    nnoremap ? :Rg<CR>
    nnoremap <M-r> :History<CR>
    nnoremap <M-g> :GFiles?<CR>
    nnoremap <M-hhhG> :GFiles<CR>
    nnoremap <M-m> :Marks<CR>
    nnoremap <M-w> :Windows<CR>
endif

"------------------------------------------- easymotion
if HasPlug('vim-easymotion')
    nmap gk <Plug>(easymotion-overwin-f)
    nmap gl <Plug>(easymotion-overwin-line)
    "imap <M-k> <esc><Plug>(easymotion-overwin-f)
    "imap <M-j> <esc><Plug>(easymotion-overwin-line)
    " nmap <Leader>w <Plug>(easymotion-overwin-w)
endif

"------------------------------------------- goyo
if HasPlug('goyo.vim')
    nnoremap <F7> <esc>:Goyo<cr>
    "setlocal nonumber
    "setlocal norelativenumber
endif

"------------------------------------------- ChooseWin
if HasPlug('vim-choosewin')
    nnoremap <silent> - :ChooseWin<CR>
endif

"------------------------------------------- Autoformat
if HasPlug('vim-autoformat')
    nnoremap <M-i> :Autoformat<cr>
endif

"------------------------------------------- vimtranslateme
if HasPlug('vim-translate-me')
    nmap <silent> <M-d> <Plug>TranslateW
    vmap <silent> <M-d> <Plug>TranslateWV
    nmap <silent> <Leader>r <Plug>TranslateR
    vmap <silent> <Leader>r <Plug>TranslateRV
endif

"------------------------------------------- mundo
if HasPlug('vim-mundo')
    map <F4> <esc>:MundoToggle<cr>
endif

"------------------------------------------- Startify
if HasPlug('vim-startify')
    noremap <leader>s <esc>:Startify<cr>
    "au FileType startify noremap q :q<cr>
endif

"-------------------------------------------- zoomwintab
if HasPlug('zoomwintab.vim')
    nnoremap  <c-w>o :ZoomWinTabToggle<cr>
endif

"-------------------------------------------- tagbar
if HasPlug('tagbar')
    nnoremap <F3> :TagbarToggle<cr>
    "inoremap <F3> <esc>:TagbarToggle<cr>
endif
