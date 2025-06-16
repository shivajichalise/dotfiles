local null_ls_status, null_ls = pcall(require, "none-ls")
if not null_ls_status then
	return
end

lspconfig.null_ls.setup({
	sources = {
		-- ESLint for diagnostics and fixing
		null_ls.builtins.diagnostics.eslint_d.with({
			condition = function(utils)
				return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json", ".eslintrc" })
			end,
		}),
		null_ls.builtins.formatting.eslint_d,

		-- Prettier for code formatting
		null_ls.builtins.formatting.prettier,

		-- SQLFluff Formatter
		null_ls.builtins.formatting.sqlfluff.with({
			extra_args = { "--dialect", "postgres" }, -- Customize as needed
		}),

		-- SQLFluff Diagnostics (Linter)
		null_ls.builtins.diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
		}),
	},
	on_attach = on_attach,
})
