-- Change this to the folder corresponding to your current OS.
local environment = "joshua" 
local default_folder = 'windows'

require(environment .. ".plugins-setup")
require(environment .. ".core.options")
require(environment .. ".core.colorscheme")
require(environment .. ".core.keymaps")
require(environment .. ".plugins.treesitter")
require(environment .. ".plugins.lsp")
require(environment .. ".plugins.harpoon")

if default_folder == 'windows' then
	vim.cmd[[cd G:\E\ Drive\Software_Dev]]
	vim.api.nvim_create_user_command(
		'GitBash',
		function()
			vim.cmd([[term "C:/Program Files/Git/bin/bash.exe"]])
		end,
		{}
	)
elseif defaul_folder == 'mac' then
	vim.cmd[[cd ~/dev]]
	vim.api.nvim_create_user_command(
		'MacZsh',
		function()
			vim.cmd([[term zsh]])
		end,
		{}
	)
end
