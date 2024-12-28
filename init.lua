local default_folder = 'mac'

require('core.options')
require('core.keymaps')
require('config.lazy')

if default_folder == 'windows' then
	vim.cmd[[cd D:\Software_Dev]]
vim.opt.shell = "bash"
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
	vim.api.nvim_create_user_command(
	  'GoNvimConfig',
	  function()
		vim.cmd[[:vsplit | Explore C:\Users\termi\AppData\Local\nvim]]
	  end,
	  {}
	)
elseif default_folder == 'mac' then
	vim.cmd[[cd /Users/joshuawise/dev]]
vim.opt.shell = "zsh"
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
	vim.api.nvim_create_user_command(
	  'GoNvimConfig',
	  function()
		vim.cmd[[:vsplit | Explore /Users/joshuawise/.config/nvim]]
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

