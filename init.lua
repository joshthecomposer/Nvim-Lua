local os = require("helpers.os")

vim.keymap.set('i', '<Esc>', '<Esc>', { noremap = true })
vim.keymap.set('c', '<Esc>', '<Esc>', { noremap = true })

require('core.options')
require('core.keymaps')
require('config.lazy')

if os.is_windows then
	vim.cmd[[cd E:\Software_Dev]]
	vim.opt.shell = "bash"
	vim.opt.shellcmdflag = "-c"
	vim.opt.shellquote = ""
	vim.opt.shellxquote = ""
	vim.api.nvim_create_user_command(
		'GoNvimConfig',
		function()
			vim.cmd([[:vsplit | Explore C:\Users\jdwis\AppData\Local\nvim]])
		end,
		{}
	)
elseif os.is_mac then
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

vim.cmd[[:colorscheme habamax]]
-- require('core.colors')


