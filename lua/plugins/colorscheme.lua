--          ╔═════════════════════════════════════════════════════════╗
--          ║                       Colorscheme                       ║
--          ╚═════════════════════════════════════════════════════════╝

--          ┌─────────────────────────────────────────────────────────┐
--          │      `kanagawa.nvim` is a color scheme inspired by      │
--          │     traditional Japanese art, providing a visually      │
--          │       appealing and cohesive look for the editor.       │
--          └─────────────────────────────────────────────────────────┘


return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme kanagawa-wave]])
		end,
	},
}
