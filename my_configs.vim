" Getting to normal mode faster
inoremap jk <esc>
inoremap jks <esc>:w<CR>

" Line Numbers
set rnu
set nu

" Windows
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Leader>hs :split<CR>

" Sorting
vnoremap <F9> :'<,'>sort u<CR>

" Typescript
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:tsuquyomi_disable_quickfix = 1
nnoremap <Leader>. :TsuImport<CR>
autocmd FileType typescript nmap <buffer> <F2> <Plug>(TsuquyomiRenameSymbol)

" Prettier
nmap <Leader>py <Plug>(Prettier)
" Run prettier in all files without requiring @format tag
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Change to IIS directory
nnoremap <leader>iis :cd C:\fcsamerica\Client\Source\IIS<CR>
