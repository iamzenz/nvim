-- ~/nvim/lua/slydragonn/plugins/lualine.lua

return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup()
    end,
}

