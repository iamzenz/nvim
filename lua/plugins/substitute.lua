--          ╔═════════════════════════════════════════════════════════╗
--          ║                     substitute.nvim                     ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │    substitute.nvim allows for easy and powerful text    │
--          │             substitution within the editor.             │
--          └─────────────────────────────────────────────────────────┘


return {
    "gbprod/substitute.nvim",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    setup = function()
        local keymap = vim.keymap.set
        require("substitute").setup()
        keymap("n", "s", require('substitute').operator)
        keymap("n", "ss", require('substitute').line)
        keymap("n", "S", require('substitute').eol)
        keymap("x", "s", require('substitute').visual)
    end,
}
