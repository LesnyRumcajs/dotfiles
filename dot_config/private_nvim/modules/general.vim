" Theme on enter
autocmd vimenter * colorscheme gruvbox

" Absolute numbers only in insert
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber


" Show quickfix window after grep
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END


" Disable line numbers in terminal mode
au TermOpen * setlocal nonumber norelativenumber

" Needed for DirDiff to work
let g:DirDiffForceLang = ""


" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })


autocmd BufWritePre *.rs lua vim.lsp.buf.format({ async = false })
autocmd BufWritePre *.lua lua vim.lsp.buf.format({ async = false })
