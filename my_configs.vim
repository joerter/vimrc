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
nnoremap <Leader><F11> :TsuReferences<CR>

" Prettier
nmap <Leader>py <Plug>(Prettier)
" Run prettier in all files without requiring @format tag
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" ALE
" g:ale_fix_on_save
let g:ale_fixers = {'typescript': ['trim_whitespace', 'remove_trailing_lines', 'tslint']}

if (has("autocmd"))
  augroup colorextend
    autocmd!
    " Make `Function`s bold in GUI mode
    " autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": {"#abb2bf"} })
    autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": {"gui": "#abb2bf"} })
    " Override the `Statement` foreground color in 256-color mode
    " autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
    " Override the `Identifier` background color in GUI mode
    " autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
  augroup END
endif
colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*\\bin\\*,*\\packages\\*,*\\obj\\*

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "left"

inoremap <C-space> <C-X><C-O>
