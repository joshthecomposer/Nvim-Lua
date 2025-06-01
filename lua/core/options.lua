vim.o.number = true
vim.o.mouse = 'a'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.clipboard = 'unnamedplus'
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.backspace = "indent,eol,start"
vim.o.termguicolors = true
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "ruby", "python" },
  callback = function()
    vim.bo.tabstop = 2        -- Number of spaces that a <Tab> in the file counts for
    vim.bo.shiftwidth = 2     -- Size of an indent
    vim.bo.softtabstop = 2    -- Number of spaces a <Tab> inserts in insert mode
    vim.bo.expandtab = true   -- Convert tabs to spaces
  end,
})
