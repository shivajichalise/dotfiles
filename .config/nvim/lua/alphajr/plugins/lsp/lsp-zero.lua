-- import lsp-zero plugin safely
local setup, lsp_zero = pcall(require, "lsp-zero")
if not setup then
	return
end

lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
end)

lsp_zero.setup()
