vim.g.mapleader = " "
vim.keymap.set("n", '<leader>cd', ':cd %:p:h')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>ve', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ai', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.cmd [[
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx lua vim.lsp.buf.format({timeout_ms = 1000})

]]
