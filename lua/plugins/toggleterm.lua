--          ╔═════════════════════════════════════════════════════════╗
--          ║                     toggleterm.nvim                     ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │  toggleterm.nvim integrates terminal management within  │
--          │    the editor, allowing multiple terminal instances.    │
--          └─────────────────────────────────────────────────────────┘


return {
    'akinsho/toggleterm.nvim', version = "*", 
    opts = {
        -- If you want to pass options to be automatically handled by the plugin, you can put them here
    },
    config = function()
        require('toggleterm').setup({
            size = 20,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            auto_scroll = true,
            shading_factor = 2, -- for example
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = 'float',
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'single',
                width = 80, -- customize
                height = 30, -- customize
                winblend = 3,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                },
            },
        })
    end,
}
