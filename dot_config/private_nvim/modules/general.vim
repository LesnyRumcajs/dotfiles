" Theme on enter
autocmd vimenter * colorscheme gruvbox

" Tabs are 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Show line numbers
set number
" Line number relative to the current position
set relativenumber

" Absolute numbers only in insert
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

" Highlight the current cursor line
set cursorline
" set cursorcolumn

" Longer history for executed commands
set history=1000
"
" Maintain undo history between sessions
set undofile

" Automatically re-read files if modified outside nvim
set autoread

" Current buffer can be sent to background without write
set hidden

" enable project specific exrc
set exrc

" Disable beep on errors, flash the screen instead
set noerrorbells
set visualbell

" No swap and backup files
"" set noswapfile
set nobackup
set nowb

" Spell check
" set spell
"
" search by default is case insensitive unless an uppercase character is there
" (otherwise use \c)
set ignorecase
set smartcase

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Show quickfix window after grep
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END

" Folding
set foldenable
set foldlevelstart=10 "Open most of the folds by default. If set to 0 all folds will be closed.
set foldnestmax=10 "Protection from too many folds
set foldmethod=indent

" Disable line numbers in terminal mode
au TermOpen * setlocal nonumber norelativenumber

" Needed for DirDiff to work
let g:DirDiffForceLang = ""

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Configure LSP through rust-tools.nvim plugin.
" rust-tools will configure and enable certain LSP features for us.
" See https://github.com/simrat39/rust-tools.nvim#configuration
lua <<EOF
local nvim_lsp = require'lspconfig'

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require 'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
-- More here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- Rust
require('rust-tools').setup(opts)
require("nvim-test").setup{}
-- Go
require'lspconfig'.gopls.setup{}
-- Dockerfile
require'lspconfig'.dockerls.setup{}
EOF


" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration
lua <<EOF
local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})
EOF

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })


autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)
