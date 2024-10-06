--          ╔═════════════════════════════════════════════════════════╗
--          ║                      lualine.nvim                       ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │   lualine.nvim is a fast and customizable statusline    │
--          │                 plugin written in Lua.                  │
--          └─────────────────────────────────────────────────────────┘


return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup()
    end,
}
