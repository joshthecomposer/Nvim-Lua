--vim.o.shell = "C:/Program Files/Git/bin/bash.exe"
vim.o.number = true
vim.o.mouse = 'a'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.clipboard = 'unnamedplus'
vim.cmd('colorscheme rose-pine')
vim.cmd('set guifont=JetBrains\\ Mono\\ NL:h16')
vim.api.nvim_create_user_command(
    'GitBash',
    function()
	    vim.cmd([[term "C:/Program Files/Git/bin/bash.exe"]])
	end,
	{}
)
local default_directory = "G:/E Drive/Software_Dev/"
vim.cmd("cd " .. default_directory)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.cmd [[packadd packer.nvim]]
vim.cmd('belowright split | GitBash')
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate', prefer_git = false})
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
