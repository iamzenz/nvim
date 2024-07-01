-- only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'karb94/neoscroll.nvim'

  vim.cmd("colorscheme kanagawa-wave")

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }

  -- Parser
  use {
	  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
  }

  -- Language server
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- Dashboard to be viewed when opening neovim
  use {
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		  local db = require('dashboard')
		  db.setup({
			  theme = 'hyper',
			  config = {
				  week_header = {
					  enable = true,
				  },
				  shortcut = {
					  { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
					  {
						  icon = ' ',
						  icon_hl = '@variable',
						  desc = 'Files',
						  group = 'Label',
						  action = 'Telescope find_files',
						  key = 'f',
					  },
					  {
						  desc = ' Apps',
						  group = 'DiagnosticHint',
						  action = 'Telescope app',
						  key = 'a',
					  },
					  {
						  desc = ' dotfiles',
						  group = 'Number',
						  action = 'Telescope dotfiles',
						  key = 'd',
					  },
				  },
			  },
		  })
	  end,
	  requires = {'nvim-tree/nvim-web-devicons'}
  }
end)
