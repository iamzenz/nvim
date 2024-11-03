return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",  -- Add this if you're using nvim-cmp for completion
  },
  config = function()
    require("obsidian").setup {
      workspaces = {
        {
          name = "zettlekasten",
          path = "~/Documents/Zettlekasten/",
        },
        {
          name = "mbdtv",
          path = "~/Documents/My Beautiful, Dark, Twisted Vault/",
        },
      },
      new_notes_location = "current_dir",
      disable_frontmatter = true,
      note_frontmatter_func = nil,
      ui = { enable = false },

      -- Customize how note file names are generated using the title
      ---@param spec { id: string, dir: obsidian.Path, title: string|? }
      ---@return string|obsidian.Path The full path to the new note.
      note_path_func = function(spec)
          local title = spec.title or spec.id
          -- Use the title directly for the file name
          local file_name = title  -- Keep spaces and all characters
          local path = spec.dir / file_name
          return path:with_suffix(".md")
      end,
    }
  end,
}
