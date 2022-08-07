local set = vim.opt

-- Tabs are 2 spaces
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true

-- show line numbers
set.number = true

-- line number relative to the current position
set.relativenumber = true

-- Highlight the current cursor line
set.cursorline = true
-- set.cursorcolumn = true

-- Longer history for executed commands
set.history = 1000
--
-- Maintain undo history between sessions
set.undofile = true

-- Automatically re-read files if modified outside nvim
set.autoread = true

-- Current buffer can be sent to background without write
set.hidden = true

-- enable project specific exrc
set.exrc = true

-- Disable beep on errors, flash the screen instead
set.errorbells = false
set.visualbell = true

-- No swap and backup files
-- set.noswapfile
set.backup = false
set.wb = false

-- Spell check
-- set.spell = true
--
-- search by default is case insensitive unless an uppercase character is there
-- (otherwise use \c)
set.ignorecase = true
set.smartcase = true

-- have a fixed column for the diagnostics to appear in
-- this removes the jitter when warnings/errors flow in
set.signcolumn = "yes"

-- Folding
set.foldenable = true
set.foldlevelstart = 10 -- open most of the folds by default. If set to 0 all folds will be closed.
set.foldnestmax = 10 -- protection from too many folds
set.foldmethod = "indent"


--
-- Completion
--

-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
set.completeopt = 'menuone,noinsert,noselect'

-- Avoid showing extra messages when using completion
set.shortmess:append('c')
