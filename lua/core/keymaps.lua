vim.g.mapleader = " "
vim.keymap.set("n", '<leader>cd', ':cd %:p:h')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>ve', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ai', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.cmd [[
	autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx lua vim.lsp.buf.format({timeout_ms = 1000})
]]

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.keymap.set('n', '<leader>t', ':bd!<CR>', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('t', '<esc><esc>', [[<c-\><c-n>]], { noremap = true, silent = true, buffer = true })
  end,
})

vim.keymap.set('n', '<leader>t', ':split | terminal<CR>', { noremap = true, silent = true })

vim.cmd([[autocmd TermOpen * startinsert]])
vim.keymap.set("n", "<leader>gt", ":GitBlameToggle<Cr>")                         -- ToggleBlame
vim.keymap.set("n", "<leader>gy", ":GitBlameCopyFileURL<Cr>")                    -- Copy file URL to clipboard
vim.keymap.set("v", "<leader>gy", ":GitBlameCopyFileURL<Cr>")                    -- Copy file URL to clipboard
vim.keymap.set("v", "<leader>gY", ":GitBlameOpenFileURL<Cr>")                    -- Copy file URL to clipboard
