--          ╔═════════════════════════════════════════════════════════╗
--          ║                         Keymaps                         ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │     This file defines custmm keymaps in Neovim for      │
--          │   improved navigation, editing, and task management,    │
--          │             enhancing workflow efficiency.              │
--          └─────────────────────────────────────────────────────────┘


-- ══ TODO: ═══════════════════════════════════════════════════════════
--
-- - [x] Add shortcuts to common directories, such as nvim, dotfiles, Zealot, etc. Not necessary with auto-session and command line
-- - [x] Create a keymap to open new BLANK line below a comment
-- - [x] Create keymap for deleting all contents of a file
-- - [x] Reformat lunarvim keymaps
-- - [x] Create TODO: script
-- - [x] Create new TODO item keymap
-- - [x] Add keymap to swap windows left to right
-- - [x] Add keymap to open line a new line at the end of the file
-- - [ ] Create keymap to "check" a TODO item
-- - [ ] Update ^^^^^^ to restore cursor to original position
-- - [ ] Can I make it possible to undo entire TODO item with one undo?



vim.g.mapleader = " " -- Set space as the leader key

local keymap = vim.keymap.set -- the new way of setting keymaps

-- Open new line at end of file
keymap("n", "<leader>A", "Go", { desc = "Open new line at end of file" })

-- Source keymaps.lua
keymap("n", "<leader>R", ":source /home/mike/.config/nvim/lua/config/keymaps.lua<CR>", { desc = "Source keymaps.lua" })

keymap("n", "nnp", "<CMD>NoNeckPain<CR>", { desc = "Activate NoNeckPain" })

-- Command to add TODO comment with comment-box.nvim
keymap("n", "<leader>td", "o<CR><CR><CR><ESC>kkiTODO:<ESC><CMD>CBllline13<CR>o<CR> - [ ] ", { desc = "Add a TODO comment" })
keymap("n", "<leader>md", "0f[lrx", { desc = "Mark Done" })
keymap("n", "<leader>rm", "0f[lr ", { desc = "Remove checkMark" })
keymap("n", "<leader>to", "o- [ ] ", { desc = "Open new TODO: item below current line" })
keymap("n", "<leader>tO", "O- [ ] ", { desc = "Open new TODO: item below current line" })


-- ToggleTerm
keymap("n", "<leader>tt", "<CMD>ToggleTerm<CR>", { desc = "Open ToggleTerm" })

-- Move current line/block in insert mode
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move current line / block down" }) -- lunarvim
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move current line / block up" }) -- lunarvim

-- Save
keymap("n", "<leader>w", "<CMD>update<CR>", { desc = "Save" })

-- Quit
keymap("n", "<leader>q", "<CMD>qa<CR><CR>", { desc = "Quit" })

-- Exit insert mode
keymap("i", "jk", "<ESC>")

-- Navigate one line at a time, even with wrapped lines
keymap({"n", "v"}, "j", "gj", { desc = "Move down one line, even with wrapped lines" })
keymap({"n", "v"}, "k", "gk", { desc = "Move up one line, even with wrapped lines" })

-- NeoTree
keymap("n", "<leader>e", "<CMD>Neotree toggle<CR>", { desc = "Toggle NeoTree" })
keymap("n", "<leader>tf", "<CMD>Neotree focus<CR>", { desc = "Tree Focus" })

-- Tabs
keymap("n", "<leader><tab><tab>", "<CMD>tabnew<CR>", { desc = "New tab" })
keymap("n", "<tab>", "gt", { desc = "Next tab" })
keymap("n", "<S-tab>", "gT", { desc = "Previous tab" })
keymap("n", "<leader>tc", "<CMD>tabclose<CR>", { desc = "Close tab" })


-- Undotree
keymap("n", "<leader>u", "<CMD>UndotreeToggle<CR>", { desc = "Toggle undotree" })

-- New Windows
keymap("n", "<leader>ow", "<CMD>vsplit<CR>", { desc = "Open a new window vertically" })
keymap("n", "<leader>h", "<CMD>split<CR>", { desc = "Open a new window horizontally" })


-- Window Navigation
-- keymap("n", "<A-h>", "<C-w>h", { desc = "Navigate to the left window" }) -- hint: use thumb to press alt
-- keymap("n", "<A-l>", "<C-w>l", { desc = "Navigate to the right window" }) -- hint: use thumb to press alt
-- keymap("n", "<A-k>", "<C-w>k", { desc = "Navigate to the window above" }) -- hint: use thumb to press alt
-- keymap("n", "<A-j>", "<C-w>j", { desc = "Navigate to the window below" }) -- hint: use thumb to press alt
keymap("n", "<A-s>", "<C-w>r", { desc = "Swap windows left to right" })

-- Resize Windows
keymap("n", "<C-Left>", "<C-w><", { desc = "Resize window to the left" })
keymap("n", "<C-Right>", "<C-w>>", { desc = "Resize window to the right" })
keymap("n", "<C-Up>", "<C-w>+", { desc = "Resize window up" })
keymap("n", "<C-Down>", "<C-w>-", { desc = "Resize window down" })

-- Indent Blocks
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Jump back to file directory
keymap("n", "-", "<CMD>Ex<CR>", { desc = "Jump back to file directory" })

-- Helix inspired remaps, go home and go long
keymap("n", "gh", "^", { desc = "[G]oto first char in line (h is chosen because its also a left movement" }) -- props to whoever came up with these
keymap("n", "gl", "$", { desc = "[G]oto last char in line (l is chosen because its also a right movement" })

-- Drag selected lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Drag selection down one line" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Drag selection up one line" })

-- Keep cursor in place as you are appending rows
keymap("n", "J", "mzJ`z", { desc = "Keep cursor in place when appending rows" })

-- keep search terms in the middle of the screen
keymap("n", "n", "nzzzv", { desc = "Keep next search term in the middle of the screen" })
keymap("n", "N", "Nzzzv", { desc = "Keep previous search terms in the middle of the screen" })

-- yanks into a secondary buffer so you dont lose your yank
keymap("x", "<leader>p", [["_dP]], { desc = "Yank into an alternate buffer so it doesnt get lost" })

-- Yank to system clipboard
keymap("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" }) --asbjornHaland
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" }) --asbjornHaland

-- Delete without yanking
-- keymap({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Delete entire contents of current buffer
-- keymap("n", "<leader>dd", ":%d<CR>", { desc = "Delete entire contents of current buffer" })

-- LSP
keymap("n", "<leader>fp", "<cmd>!black %<CR>", { desc = "[F]ormat [P]ython file" });

-- Make current file executable
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Add executable permissions to the current buffer" })

-- Replace the word under cursor thoughout the file
keymap("n", "<leader>cw", [[:%s/<C-r><C-w>//gc<Left><Left><Left>]], { desc = "Replace word under cursor" })

-- Insert a blank line below or above current line
keymap("n", "<leader>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})

keymap("n", "<leader>O", "printf('m`%sO<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- Open blank line below or above comment
keymap("n", "<leader>bo", "o<ESC>0D", { desc = "Open blank line below comment" })
keymap("n", "<leader>bO", "O<ESC>0D", { desc = "Open blank line above comment" })


-- TODO: learn how to use marks/tags?
-- keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

-- https://github.com/oyinbra/nvim-config
-- Config inspo: slydragonn/maps.lua
--
