return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",

		{
			"zbirenbaum/copilot.lua",
			cmd = "Copilot",
			build = ":Copilot auth",
			config = function()
				require("copilot").setup({
					suggestion = {
						enabled = true,
						auto_trigger = true,
						keymap = {
							accept = "<C-l>",
							next = "<C-]>",
							prev = "<C-[>",
							dismiss = "<C-/>",
						},
					},
					panel = { enabled = false },
				})
			end,
		},
		{
			"zbirenbaum/copilot-cmp",
			config = function()
				require("copilot_cmp").setup()
			end,
		},
	},

	config = function()
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)

		local on_attach = function(client, bufnr)
			print("LSP attached: " .. client.name .. " -> buffer " .. bufnr)
			local opts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		end

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
		})
		require("lspconfig").sorbet.setup {
			cmd = { "srb", "tc", "--lsp" },
			capabilities = capabilities,
			on_attach = on_attach,
			root_dir = require("lspconfig").util.root_pattern("sorbet/config", "Gemfile", ".git"),
		}
		require("lspconfig").rust_analyzer.setup {
			capabilities = capabilities,
			on_attach = on_attach,
		}
		require("lspconfig").lua_ls.setup {
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim", "it", "describe", "before_each", "after_each" },
					}
				}
			}
		}
		require("lspconfig").pyright.setup {
			capabilities = capabilities,
			on_attach = on_attach,
		}

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(),
				['<C-n>'] = cmp.mapping.select_next_item(),
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
				['<CR>'] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
				['<C-Space>'] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources({
				{ name = 'copilot' },
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			}, {
					{ name = 'buffer' },
				})
		})

		vim.diagnostic.config({
			virtual_text = false,
			underline = true,
			signs = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
		})
	end
}
