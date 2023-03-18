-- Setup Lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin list
plugins = {
-- Collection of common configurations for the Nvim LSP client
'neovim/nvim-lspconfig',
-- Pretty UI
{'glepnir/lspsaga.nvim', branch = 'main' },
-- Completion framework
'hrsh7th/nvim-cmp',

-- LSP completion source for nvim-cmp
'hrsh7th/cmp-nvim-lsp',

-- Snippet completion source for nvim-cmp
'hrsh7th/cmp-vsnip',

-- package manager
'williamboman/mason.nvim',

-- Other usefull completion sources
'hrsh7th/cmp-path',
'hrsh7th/cmp-buffer',

-- See hrsh7th's other plugins for more completion sources!

-- To enable more of the features of rust-analyzer, such as inlay hints and more!
'simrat39/rust-tools.nvim',

-- Snippet engine
'hrsh7th/vim-vsnip',

-- Fuzzy finder
-- Optional
'nvim-lua/popup.nvim',
'nvim-lua/plenary.nvim',
{'nvim-telescope/telescope.nvim', tag = '0.1.0' },

-- Git wrapper
'https://github.com/tpope/vim-fugitive',
-- Color scheme
'morhetz/gruvbox',
-- Nice status tabline
'vim-airline/vim-airline',
-- Differences between directories, e.g. :DirDiff
'will133/vim-dirdiff',
-- Comment out code
'preservim/nerdcommenter',
-- Trailing whitespace obliterator
'csexton/trailertrash.vim',
-- File explorer
'preservim/nerdtree',
'airblade/vim-gitgutter',
'tpope/vim-unimpaired',
-- Nice git branches
'idanarye/vim-merginal',
-- Github integration (:GBrowse)
'tpope/vim-rhubarb',
-- Git commit browser
'junegunn/gv.vim',
'ryanoasis/vim-devicons',
'tpope/vim-surround',

-- In-vim unit tests
'klen/nvim-test',
{'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
}


-- Actually invoke Lazy
require("lazy").setup(plugins, opts)
