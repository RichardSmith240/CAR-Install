return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig"
		},
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = {"vim"},
							},
						},
					},
				},
				markdown_oxide = {},
				jdtls = {},
				tombi = {},
				bashls = {},
			},
		},
		config = function(_, opts)
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"markdown_oxide",
					"jdtls",
					"bashls",
					"tombi"
				}
			})

			for server, config in pairs(opts.servers) do
				vim.lsp.config(server,config)
				vim.lsp.enable(server)
			end
		end,
	},
}
