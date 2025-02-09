return {

  -- automatically add end tags and replace them accordingly
  {
    "windwp/nvim-ts-autotag",
    lazy = "VeryLazy",
    config = function()
      require("nvim-ts-autotag").setup({
        autotag = {
          enable = true,
        },
      })
    end,
  },
}
