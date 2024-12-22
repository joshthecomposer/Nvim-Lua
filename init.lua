local default_folder = 'windows'

require('core.options')
require('core.keymaps')
require('config.lazy')

if default_folder == 'windows' then
	vim.cmd[[cd D:\Software_Dev]]
	vim.api.nvim_create_user_command(
	  'GoNvimConfig',
	  function()
		vim.cmd[[:vsplit | Explore C:\Users\termi\AppData\Local\nvim]]
	  end,
	  {}
	)
elseif default_folder == 'mac' then
	vim.cmd[[cd /Users/joshuawise/dev]]
	vim.api.nvim_create_user_command(
	  'GoNvimConfig',
	  function()
		vim.cmd[[Explore /Users/joshuawise/.config/nvim]]
	  end,
	  {}
	)
end

require('core.colors')
vim.filetype.add({
    extension = {
        wgsl = "wgsl",
    },
})

