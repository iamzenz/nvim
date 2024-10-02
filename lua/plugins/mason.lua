return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "nvim-lua/completion-nvim",

    config = function()
        require("mason").setup({
            lspconfig = require("mason-lspconfig"),
            completion = require("completion"),
        })
    end,
}
