--          ╔═════════════════════════════════════════════════════════╗
--          ║                         Keymaps                         ║
--          ╚═════════════════════════════════════════════════════════╝

-- Keymaps are the bread and butter of vim. They are what make vim so powerful and efficient.


-- ══ TODO: ═══════════════════════════════════════════════════════════
--
-- 4. Add shortcuts to common directories, such as nvim, dotfiles, Zealot, etc.


-- ══ LunarVim ════════════════════════════════════════════════════════
-- -- Move current line / block with Alt-j/k ala vscode.
-- ["<A-j>"] = "<Esc>:m .+1<CR>==gi",
-- -- Move current line / block with Alt-j/k ala vscode.
-- ["<A-k>"] = "<Esc>:m .-2<CR>==gi",

vim.g.mapleader = " " -- Set space as the leader key


local map = vim.api.nvim_set_keymap -- the old way of setting keymaps
local keymap = vim.keymap.set -- the new way of setting keymaps


-- Save
keymap("n", "<leader>w", "<CMD>update<CR>", { desc = "Save" })

-- Quit
keymap("n", "<leader>q", "<CMD>qa<CR><CR>", { desc = "Quit" })

-- Exit insert mode
keymap("i", "jk", "<ESC>", { noremap = true, silent = true })

-- NeoTree
keymap("n", "<leader>e", "<CMD>Neotree toggle<CR>", { desc = "Toggle NeoTree" })
keymap("n", "<leader>r", "<CMD>Neotree focus<CR>", { desc = "Focus on NeoTree" })

-- Tabs
keymap("n", "<leader><tab><tab>", "<CMD>tabnew<CR>", { desc = "New tab" })
keymap("n", "<leader><tab>d", "<CMD>tabclose<CR>", { desc = "Close tab" })
keymap("n", "<leader>t", "<CMD>+tabnext<CR>", { desc = "Next tab" })
keymap("n", "<leader>pt", "<CMD>-tabnext<CR>", { desc = "Previous tab" })


-- Undotree
keymap("n", "<leader>u", "<CMD>UndotreeToggle<CR>", { desc = "Toggle undotree" })

-- New Windows
keymap("n", "<leader>ow", "<CMD>vsplit<CR>", { desc = "Open a new window vertically" })
keymap("n", "<leader>h", "<CMD>split<CR>", { desc = "Open a new window horizontally" })


-- Window Navigation
keymap("n", "<A-h>", "<C-w>h", { desc = "Navigate to the left window" }) -- hint: use thumb to press alt
keymap("n", "<A-l>", "<C-w>l", { desc = "Navigate to the right window" }) -- hint: use thumb to press alt
keymap("n", "<A-k>", "<C-w>k", { desc = "Navigate to the window above" }) -- hint: use thumb to press alt
keymap("n", "<A-j>", "<C-w>j", { desc = "Navigate to the window below" }) -- hint: use thumb to press alt

-- Resize Windows
keymap("n", "<C-Left>", "<C-w><", { desc = "Resize window to the left" })
keymap("n", "<C-Right>", "<C-w>>", { desc = "Resize window to the right" })
keymap("n", "<C-Up>", "<C-w>+", { desc = "Resize window up" })
keymap("n", "<C-Down>", "<C-w>-", { desc = "Resize window down" })

-- Indent Blocks
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Jump back to file directory
keymap("n", "<leader>pv", "<CMD>Ex<CR>", { desc = "Jump back to file directory" })
keymap("n", "-", "<CMD>Ex<CR>", { desc = "Jump back to file directory" })


-- Helix inspired remaps because I never liked ^ and $
keymap("n", "gh", "^", { desc = "[G]oto first char in line (h is chosen because its also a left movement" })
keymap("n", "gl", "$", { desc = "[G]oto last char in line (l is chosen because its also a right movement" })

-- "Drag" selected lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Drag selection down one line" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Drag selection up one line" })


-- Keep cursor in place as you are appending rows
keymap("n", "J", "mzJ`z", { desc = "Keep cursor in place when appending rows" })

-- keep search terms in the middle of the screen
keymap("n", "n", "nzzzv", { desc = "Keep next search term in the middle of the screen" })
keymap("n", "N", "Nzzzv", { desc = "Keep previous search terms in the middle of the screen" })

-- yanks into a secondary buffer so you dont lose your yank
-- map("x", "<leader>p", [["_dP]], { desc = "Yank into an alternate buffer so it doesnt get lost" })

-- Yank to system clipboard
keymap("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" }) --asbjornHaland
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" }) --asbjornHaland

-- Delete without yanking
keymap({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Look this up laterhttps://crates.io/crates/tmux-sessionizer
-- map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux-sessionizer" })

-- LSP
keymap("n", "<leader>fp", "<cmd>!black %<CR>", { desc = "[F]ormat [P]ython file" });

-- TODO: learn how to use marks/tags?
-- keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Make current file executable
-- keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Add executable permissions to the current buffer" })

-- Replace the word under cursor thoughout the file
keymap("n", "<leader>c", [[:%s/<C-r><C-w>//gc<Left><Left><Left>]], { desc = "Replace word under cursor" })
-- eymap("n", "<Leader>c", [[:%s/<C-r><C-w>//g<Left><Left>]])
-- keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace the word under cursor throughout the file" })

-- --tabpage remaps
keymap("n", "<leader>ta", "<cmd>tabnew<CR>", { desc = "[T]abpage [A]dd new tab" })
keymap("n", "<leader>tr", "<cmd>tabclose<CR>", { desc = "[T]abpage [R]emove current tab" })

-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap("n", "<leader>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})

keymap("n", "<leader>O", "printf('m`%sO<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- https://github.com/oyinbra/nvim-config
-- Config inspo: slydragonn/maps.lua
