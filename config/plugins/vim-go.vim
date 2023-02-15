let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" au FileType go nmap <Leader>gis <Plug>(go-implements)
" au FileType go nmap <Leader>i <Plug>(go-info)
" au FileType go nmap <Leader>gdc <Plug>(go-doc)
" au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
au FileType go nmap <space>r <Plug>(go-run)
au FileType go nmap <space>b <Plug>(go-build)
au FileType go nmap <space>t <Plug>(go-test)
au FileType go nmap <Leader>gc <Plug>(go-coverage)
au FileType go nmap <space>rn <Plug>(go-rename)
" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap <Leader>dt <Plug>(go-def-tab)
