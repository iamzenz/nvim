--          ╔═════════════════════════════════════════════════════════╗
--          ║                     bufferline.nvim                     ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │  bufferline.nvim provides a customizable and visually   │
--          │    appealing buffer line for managing open buffers.     │
--          └─────────────────────────────────────────────────────────┘


return {
    "akinsho/nvim-bufferline.lua",
    -- keys are configured in keymaps.lua
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = true,
        show_close_icon = true,
      },
    },
 }
