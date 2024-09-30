--          ╔═════════════════════════════════════════════════════════╗
--          ║                       comment-box                       ║
--          ╚═════════════════════════════════════════════════════════╝

return {
  "LudoPinelli/comment-box.nvim",
  config = function()
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true }

    
    keymap({ "n", "v" }, "<Leader>cb", "<Cmd>CBccbox7<CR>", opts) -- Titles
    keymap({ "n", "v" }, "<Leader>ct", "<Cmd>CBllline13<CR>", opts) -- Line with comment
    keymap("n", "<Leader>cl", "<Cmd>CBline13<CR>", opts) -- Line break
    keymap({ "n", "v" }, "<Leader>cm", "<Cmd>CBllbox19<CR>", opts) -- Multiline comment
    keymap({ "n", "v" }, "<Leader>cd", "<Cmd>CBd<CR>", opts) -- Delete comment
  end
}
