--          ╔═════════════════════════════════════════════════════════╗
--          ║                        nvim-cmp                         ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │     nvim-cmp is a completion plugin for Neovim that     │
--          │     provides an extensible and highly configurable      │
--          │               auto-completion framework.                │
--          └─────────────────────────────────────────────────────────┘

return {
    "hrsh7th/nvim-cmp",
    enabled = true,
    
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim", -- vs-code like pictograms
        -- add obsidian sources
        "epwalsh/obsidian.nvim",
    },
    config = function() -- config from slydragonn
        local cmp = require("cmp")
        local lspkind = require("lspkind")

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<C-y>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
                { name = "obsidian" },
            }),

            formatting = {
                format = lspkind.cmp_format({ with_text = true, maxwidth = 50 }),
            },
        })

        vim.cmd([[
      set completeopt=menuone,noinsert,noselect
      highlight! default link CmpItemKind CmpItemMenuDefault
    ]])
    end,
}
