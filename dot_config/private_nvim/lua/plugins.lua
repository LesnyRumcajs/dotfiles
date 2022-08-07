local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')
  -- Collection of common configurations for the Nvim LSP client
  Plug 'neovim/nvim-lspconfig'
  -- Completion framework
  Plug 'hrsh7th/nvim-cmp'

  -- LSP completion source for nvim-cmp
  Plug 'hrsh7th/cmp-nvim-lsp'

  -- Snippet completion source for nvim-cmp
  Plug 'hrsh7th/cmp-vsnip'

  -- Other usefull completion sources
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-buffer'

  -- See hrsh7th's other plugins for more completion sources!

  -- To enable more of the features of rust-analyzer, such as inlay hints and more!
  Plug 'simrat39/rust-tools.nvim'

  -- Snippet engine
  Plug 'hrsh7th/vim-vsnip'

  -- Fuzzy finder
  -- Optional
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

  -- Git wrapper
  Plug 'https://github.com/tpope/vim-fugitive'
  -- Color scheme
  Plug 'morhetz/gruvbox'
  -- Nice status tabline
  Plug 'vim-airline/vim-airline'
  -- Differences between directories, e.g. :DirDiff
  Plug 'will133/vim-dirdiff'
  -- Comment out code
  Plug 'preservim/nerdcommenter'
  -- Trailing whitespace obliterator
  Plug 'csexton/trailertrash.vim'
  -- File explorer
  Plug 'preservim/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-unimpaired'
  -- Nice git branches
  Plug 'idanarye/vim-merginal'
  -- Github integration (:GBrowse)
  Plug 'tpope/vim-rhubarb'
  -- Git commit browser
  Plug 'junegunn/gv.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-surround'

  -- In-vim unit tests
  Plug 'klen/nvim-test'
  Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
vim.call('plug#end')
