vim.g.mapleader = " "
vim.keymap.set("n", '<leader>cd', ':cd %:p:h')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_create_user_command(
    'MacZsh',
    function()
        vim.cmd([[term zsh]])
    end,
    {}
)
