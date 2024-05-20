" Leader to space instead of default '\'
let mapleader = "\<Space>"

" Merginal (Git branch select)
map <leader>gm :MerginalToggle<CR>

" Center buffer on the next occurrence
nnoremap n nzz
nnoremap N Nzz

" better dot on visual selection
vnoremap . :normal .<cr>

"" fuzzy search shortcuts
"nnoremap <silent> <leader>f :FZF<cr>
"nnoremap <silent> <leader>r :Rg<cr>

" ESC to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" shortcuts for buffer navigation
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>

" NerdTree toggle
" map <C-n> :NERDTreeToggle<CR>
map <leader>n :NvimTreeFindFile<CR>
" map <C-N> :NvimTreeToggle<CR>

" Code navigation shortcuts
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>

" Telescope mappings
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
