local default_folder = 'windows'

require('core.options')
require('core.keymaps')
require('config.lazy')

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.gltf"},
  command = "setfiletype json"
})

if default_folder == 'windows' then
	vim.cmd[[cd E:\Software_Dev]]
vim.opt.shell = [[C:\PROGRA~1\Git\bin\bash.exe]]
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
	vim.api.nvim_create_user_command(
	  'GoNvimConfig',
	  function()
		vim.cmd[[:vsplit | Explore C:\Users\jdwis\AppData\Local\nvim]]
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
		vs = "glsl",
		fs = "glsl",
    },
})
