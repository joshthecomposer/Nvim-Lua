vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate', prefer_git = false})
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	 use {
		  'VonHeikemen/lsp-zero.nvim',
		  branch = 'v1.x',
		  requires = {
			  -- LSP Support
			  {'neovim/nvim-lspconfig'},
			  {'williamboman/mason.nvim'},
			  {'williamboman/mason-lspconfig.nvim'},

			  -- Autocompletion
			  {'hrsh7th/nvim-cmp'},
			  {'hrsh7th/cmp-buffer'},
			  {'hrsh7th/cmp-path'},
			  {'saadparwaiz1/cmp_luasnip'},
			  {'hrsh7th/cmp-nvim-lsp'},
			  {'hrsh7th/cmp-nvim-lua'},

			  -- Snippets
			  {'L3MON4D3/LuaSnip'},
			  {'rafamadriz/friendly-snippets'},
		  }
	  }
	  use("folke/zen-mode.nvim")
	  use("laytan/cloak.nvim")
	  use("ThePrimeagen/harpoon")
end)
