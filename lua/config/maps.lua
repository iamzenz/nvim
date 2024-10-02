--          ╔═════════════════════════════════════════════════════════╗
--          ║                         Keymaps                         ║
--          ╚═════════════════════════════════════════════════════════╝

-- Keymaps are the bread and butter of vim. They are what make vim so powerful and efficient.


-- ══ TODO: ═══════════════════════════════════════════════════════════
--
-- 1. Add descriptions to all keymaps. Done.
-- 2. Add more keymaps


vim.g.mapleader = " " -- Set space as the leader key

-- Helper function to map keys
local function map(mode, lhs, rhs, opts)
    opts = opts or { silent = true }
    -- Make sure lhs and rhs are strings
    if type(lhs) == 'string' and type(rhs) == 'string' then
        vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    else
        print("Invalid keymap: lhs or rhs is not a string")
    end
end


-- Save
map("n", "<leader>w", "<CMD>update<CR>", { desc = "Save" })

-- Quit
map("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit" })

-- Exit insert mode
map("i", "jk", "<ESC>", { noremap = true, silent = true })

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>", { desc = "Toggle NeoTree" })
map("n", "<leader>r", "<CMD>Neotree focus<CR>", { desc = "Focus on NeoTree" })

-- Tabs
map("n", "<leader><tab><tab>", "<CMD>tabnew<CR>", { desc = "New tab" })
map("n", "<leader><tab>d", "<CMD>tabclose<CR>", { desc = "Close tab" })
map("n", "<leader>t", "<CMD>+tabnext<CR>", { desc = "Next tab" })
map("n", "<leader>pt", "<CMD>-tabnext<CR>", { desc = "Previous tab" })

-- Undotree
map("n", "<leader>u", "<CMD>UndotreeToggle<CR>", { desc = "Toggle undotree" })

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>", { desc = "Open a new window vertically" })
map("n", "<leader>h", "<CMD>split<CR>", { desc = "Open a new window horizontally" })


-- Window Navigation
map("n", "<C-l>", "<C-w>l", { desc = "Navigate to the right window" })
map("n", "<C-k>", "<C-w>k", { desc = "Navigate to the window above" })
map("n", "<C-j>", "<C-w>j", { desc = "Navigate to the window below" })

-- Resize Windows
map("n", "<C-Left>", "<C-w><", { desc = "Resize window to the left" })
map("n", "<C-Right>", "<C-w>>", { desc = "Resize window to the right" })
map("n", "<C-Up>", "<C-w>+", { desc = "Resize window up" })
map("n", "<C-Down>", "<C-w>-", { desc = "Resize window down" })



-- Jump back to file directory
map("n", "<leader>pv", "<CMD>Ex<CR>", { desc = "Jump back to file directory" })
map("n", "-", "<CMD>Ex<CR>", { desc = "Jump back to file directory" })


-- Helix inspired remaps because I never liked ^ and $
map("n", "gh", "^", { desc = "[G]oto first char in line (h is chosen because its also a left movement" })
map("n", "gl", "$", { desc = "[G]oto last char in line (l is chosen because its also a right movement" })

-- "Drag" selected lines up and down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Drag selection down one line" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Drag selection up one line" })


-- Keep cursor in place as you are appending rows
map("n", "J", "mzJ`z", { desc = "Keep cursor in place when appending rows" })

-- Keep cursor in the middle of the screen when scrolling with d, u
-- map("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in the middle of the screen when scrolling down" })
-- map("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in the middle of the screen when scrolling up" })

-- keep search terms in the middle of the screen
map("n", "n", "nzzzv", { desc = "Keep next search term in the middle of the screen" })
map("n", "N", "Nzzzv", { desc = "Keep previous search terms in the middle of the screen" })

-- yanks into a secondary buffer so you dont lose your yank
-- map("x", "<leader>p", [["_dP]], { desc = "Yank into an alternate buffer so it doesnt get lost" })

-- cred to asbjornHaland
-- Yank to system clipboard 
map("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

-- Delete without yanking
-- map("n", "v", "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Look this up laterhttps://crates.io/crates/tmux-sessionizer
-- map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux-sessionizer" })

-- LSP
-- map("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat file using LSP" })
map("n", "<leader>fp", "<cmd>!black %<CR>", { desc = "[F]ormat [P]ython file" });
map("n", "<leader>fj", "<cmd>%!jq '.'<CR>", { desc = "[F]ormat [J]son file" });

-- TODO: learn how to use marks/tags?
-- map("n", "<C-k>", "<cmd>cnext<CR>zz")
-- map("n", "<C-j>", "<cmd>cprev<CR>zz")
-- map("n", "<leader>k", "<cmd>lnext<CR>zz")
-- map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Make current file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Add executable permissions to the current buffer" })

-- Replace the word under cursor thoughout the file
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace the word under cursor throughout the file" })

-- --tabpage remaps
-- map("n", "<leader>ta", "<cmd>tabnew<CR>", { desc = "[T]abpage [A]dd new tab" })
-- map("n", "<leader>tr", "<cmd>tabclose<CR>", { desc = "[T]abpage [R]emove current tab" })
-- map("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "[T]abpage [N]ext tab" })
-- map("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "[T]abpage [P]revious tab" })



-- Config inspo: slydragonn/maps.lua
