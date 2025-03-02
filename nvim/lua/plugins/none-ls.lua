return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.diagnostics.golangci_lint.with({
					command = "golangci-lint",
					args = {
						"run",
						"--config=.golangci.yml",
						"--out-format=json",
					},
					cwd = function(params)
						return vim.fn.getcwd()
					end,
				}),
				-- null_ls.builtins.formatting.prettierd
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
