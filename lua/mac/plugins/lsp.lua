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

})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup()
