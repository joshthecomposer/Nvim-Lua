local lsp = require("lsp-zero")

lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'pyright',
	'html',
	'cssls',
	'omnisharp',
	'lua_ls',
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.on_attach(function(client,bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()
