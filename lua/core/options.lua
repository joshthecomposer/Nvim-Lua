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

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function()
    vim.opt.formatoptions:remove('c')
    vim.opt.formatoptions:remove('r')
    vim.opt.formatoptions:remove('o')
  end,
})
