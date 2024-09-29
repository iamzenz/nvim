require("config.lazy")
require("config.maps")
require("lazy").setup("plugins")
-- global dictionaries can be accessed via vim.*
-- g for global, b for buffer, w for window, t for tab, v for variables, o for options, etc.
-- vim.opt is a global variable that allows you to set vim options

-- :help lua-vim-variables
-- :help vim-variables
-- :help set-option
-- :help vim.opt

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
