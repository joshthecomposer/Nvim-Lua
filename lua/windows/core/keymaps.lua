local default_directory = "G:/E Drive/Software_Dev"
vim.cmd("cd " .. default_directory)
vim.g.mapleader = " "
vim.keymap.set("n", '<leader>cd', ':cd %:p:h')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_create_user_command(
    'GitBash',
    function()
	    vim.cmd([[term "C:/Program Files/Git/bin/bash.exe"]])
	end,
	{}
)
