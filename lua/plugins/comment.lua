--          ╔═════════════════════════════════════════════════════════╗
--          ║                      comment.nvim                       ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │  `comment.nvim` provides easy and efficient commenting  │
--          │  functionality for code, supporting multiple languages  │
--          │             and customizable key mappings.              │
--          └─────────────────────────────────────────────────────────┘


return {
    'numToStr/Comment.nvim',
    config = function()
    require('Comment').setup()
    end
}
