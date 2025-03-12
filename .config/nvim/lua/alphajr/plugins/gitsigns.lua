local keymap = vim.keymap

-- import gitsigns plugin safely
local gitsigns_setup, gitsigns = pcall(require, "gitsigns")
if not gitsigns_setup then
	return
end

-- configure gitsigns
gitsigns.setup({})

keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
