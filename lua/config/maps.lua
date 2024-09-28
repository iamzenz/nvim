-- ~/nvim/lua/slydragonn/maps.lua

vim.g.mapleader = " "

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
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- Undotree
map("n", "<leader>u", "<CMD>UndotreeToggle<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
-- map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")



-- Jump back to file directory
map("n", "<leader>pv", "<CMD>Ex<CR>")
map("n", "-", "<CMD>Ex<CR>")


-- Helix inspired remaps because I never liked ^ and $
map("n", "gh", "^", { desc = "[G]oto first char in line (h is chosen because its also a left movement" })
map("n", "gl", "$", { desc = "[G]oto last char in line (l is chosen because its also a right movement" })

-- "Drag" selected lines up and down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Drag selection down one line" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Drag selection up one line" })


-- Keep cursor in place as you are appending rows
map("n", "J", "mzJ`z", { desc = "Keep cursor in place when appending rows" })

-- Keep cursor in the middle of the screen when scrolling with d, u
map("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in the middle of the screen when scrolling down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in the middle of the screen when scrolling up" })

-- keep search terms in the middle of the screen
map("n", "n", "nzzzv", { desc = "Keep next search term in the middle of the screen" })
map("n", "N", "Nzzzv", { desc = "Keep previous search terms in the middle of the screen" })

-- yanks into a secondary buffer so you dont lose your yank
map("x", "<leader>p", [["_dP]], { desc = "Yank into an alternate buffer so it doesnt get lost" })

-- next greatest remap ever : asbjornHaland
-- TODO: what does this do
map("v", "<leader>y", '"+y')
map("n", "<leader>Y", '"+Y')

-- TODO: what does this do
--map({ "n", "v" }, "<leader>d", [["_d]])

map("n", "Q", "<nop>")

-- Look this up laterhttps://crates.io/crates/tmux-sessionizer
--map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- map("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat file using LSP" })

map("n", "<leader>fp", "<cmd>!black %<CR>", { desc = "[F]ormat [P]ython file" });

map("n", "<leader>fj", "<cmd>%!jq '.'<CR>", { desc = "[F]ormat [J]son file" });

-- TODO: learn how to use marks/tags?
-- map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Make current file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Add executable permissions to the current buffer" })

-- Replace the word under cursor thoughout the file
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- terminal remaps
-- map("t", "<Esc>", "<C-\\><C-n>", { noremap = true }, { desc = "Escape insert mode in a terminal" })
--
-- --tabpage rempas
-- map("n", "<leader>ta", "<cmd>tabnew<CR>", { desc = "[T]abpage [A]dd new tab" })
-- map("n", "<leader>tr", "<cmd>tabclose<CR>", { desc = "[T]abpage [R]emove current tab" })
-- map("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "[T]abpage [N]ext tab" })
-- map("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "[T]abpage [P]revious tab" })
