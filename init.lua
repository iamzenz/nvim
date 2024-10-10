--          ╔═════════════════════════════════════════════════════════╗
--          ║                         Lazy.nvim                       ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │    lazy.nvim is a modern plugin manager for Neovim.     │
--          └─────────────────────────────────────────────────────────┘


-- ══ TODO: ═══════════════════════════════════════════════════════════
--
--  - [ ] Create a plugin to automatically add title, description and todo list for config files
--  - [x] Add titles and descriptions to all plugins
--  - [ ] Organize plugins by category?
--  - [ ] Add lazy loading to all plugins
--  - [x] Add a completion engine that actually works



require("config.lazy")
require("config.keymaps")

-- :help lua-vim-variables

-- show line numbers and make them relative
vim.opt.nu = true
vim.opt.relativenumber = true

-- set line numbers for netrw
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

-- set tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- turn of swap files and setup undodir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- incremental search highlights matches as you type
vim.opt.incsearch = true

-- ensure good colors
vim.opt.termguicolors = true

-- add an 8 char buffer to the bottom of the viewport except for eof when scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- set update time
vim.opt.updatetime = 50

-- autosave
vim.api.nvim_create_autocmd(
    { "FocusLost", "ModeChanged", "TextChanged", "BufEnter" },
    { desc = "autosave", pattern = "*", command = "silent! update" }
)
