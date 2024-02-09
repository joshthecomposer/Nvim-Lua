local default_folder = 'windows'

require("joshua.plugins-setup")
require("joshua.core.options")
require("joshua.core.keymaps")
require("joshua.plugins.treesitter")
require("joshua.plugins.telescope")
require("joshua.plugins.lsp")

if default_folder == 'windows' then
	vim.cmd[[cd F:\E\ Drive\Software_Dev]]
	vim.api.nvim_create_user_command(
	  'GoNvimConfig',
	  function()
		vim.cmd[[Explore C:\Users\termi\AppData\Local\nvim]]
	  end,
	  {}
	)
elseif default_folder == 'mac' then
	vim.cmd[[cd ~/dev]]
end

require("joshua.core.colors")
--vim.cmd[[colorscheme myscheme]]
--vim.cmd[[colorscheme substrata]]
