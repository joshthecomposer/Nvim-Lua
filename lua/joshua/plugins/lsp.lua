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
	'solargraph',
	'lua_ls',
	'rubocop'
})

local function ruby_root_pattern(fname)
  local util = require 'lspconfig/util'
  return util.root_pattern('Gemfile', '.git')(fname) or util.path.dirname(fname)
end

lsp.set_preferences({
	sign_icons = { },
	server_settings = {
		solargraph = {
			root_dir = ruby_root_pattern,
			diagnostics = true,
		},
	},
})

lsp.on_attach(function(client,bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()
