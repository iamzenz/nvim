--          ╔═════════════════════════════════════════════════════════╗
--          ║                      hlchunk.nvim                       ║
--          ╚═════════════════════════════════════════════════════════╝


--          ┌─────────────────────────────────────────────────────────┐
--          │ `hlchunk.nvim` is a Neovim plugin that highlights code  │
--          │   chunks to improve readability and navigation within   │
--          │                       the editor.                       │
--          └─────────────────────────────────────────────────────────┘


-- ══ TODO: ═══════════════════════════════════════════════════════════
--
--  - [ ] I'm getting errors occasionally
--  - [ ] Add small dots to replace spaces



return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
      require("hlchunk").setup({
          chunk = {
              enable = true
              -- ...
          },
      })
  end
}
