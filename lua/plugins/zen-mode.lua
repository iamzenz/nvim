return {
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    require("zen-mode").setup({
      window = {
        width = 90,
        options = {
          number = false,
          relativenumber = false,
          signcolumn = "no",
          cursorcolumn = false,
        },
      },
      plugins = {
        kitty = {
          enabled = true,
          font = "+2",
        },
      },
    })

    -- Set keymap to toggle Zen mode
    vim.keymap.set('n', '<leader>z', ':ZenMode<CR>')
  end
}
