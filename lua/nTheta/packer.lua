-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use { 'rush-rs/tree-sitter-asm' }

	-- use { "catppuccin/nvim", as = "catppuccin" }
	-- use {'nyoom-engineering/oxocarbon.nvim'}
	-- use 'kvrohit/rasmus.nvim'
	-- use 'shaunsingh/nord.nvim'
	-- use 'andersevenrud/nordic.nvim',
	-- use 'navarasu/onedark.nvim'
	-- use 'Yazeed1s/minimal.nvim'
	-- use 'Abstract-IDE/Abstract-cs'

	use {
		"jesseleite/nvim-noirbuddy",
		requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	use {
		'nvim-tree/nvim-tree.lua'
	}

	use 'brenoprata10/nvim-highlight-colors'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
