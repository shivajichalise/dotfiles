-- import nvim-lspconfig plugin safely
local status, lspconfig = pcall(require, "lspconfig")
if not status then
	return
end
--

lspconfig.phpactor.setup({
	on_attach = on_attach,
	filetypes = { "php" },
	init_options = {
		["language_server_php_cs_fixer.enabled"] = true,
	},
})

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})

lspconfig.solidity.setup({})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
})

-- lspconfig.emmet_ls.setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     flags = lsp_flags
-- }

lspconfig.tailwindcss.setup({})

-- lspconfig.rust_analyzer.setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     filetypes = { "rust" },
-- }

lspconfig.gopls.setup({
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			gofumpt = true,
		},
	},
})
