vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "JJ", require("treesj").toggle)

keymap.set("n", "<C-d>", "<C-d>zz") --half page jumping
keymap.set("n", "<C-u>", "<C-u>zz") --half page jumping

keymap.set("n", "n", "nzzzv") -- set the cursor to center when searching terms
keymap.set("n", "N", "Nzzzv")

keymap.set("x", "<leader>p", [["_dP]]) --delete the keyword to void register

-- next greatest remap ever : asbjornHaland -- yank to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- dealing with buffers
keymap.set("n", "<TAB>", ":bnext<CR>")
keymap.set("n", "<S-TAB>", ":bprevious<CR>")
keymap.set("n", "<ESC><ESC>", ":bd<CR>")

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- no arrow keys for you
keymap.set({ "n", "i", "v" }, "<UP>", "<nop>")
keymap.set({ "n", "i", "v" }, "<DOWN>", "<nop>")
keymap.set({ "n", "i", "v" }, "<LEFT>", "<nop>")
keymap.set({ "n", "i", "v" }, "<RIGHT>", "<nop>")

-- better tabbing
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("n", "<space>r", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>q", vim.diagnostic.setloclist)

keymap.set({ "i" }, "<C-K>", function()
	ls.expand()
end, { silent = true })
keymap.set({ "i", "s" }, "<C-L>", function()
	ls.jump(1)
end, { silent = true })
keymap.set({ "i", "s" }, "<C-J>", function()
	ls.jump(-1)
end, { silent = true })

keymap.set({ "i", "s" }, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
