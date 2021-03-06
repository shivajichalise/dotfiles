vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")

keymap.set("n", "<C-d>", "<C-d>zz") --half page jumping
keymap.set("n", "<C-u>", "<C-u>zz") --half page jumping

keymap.set("n", "n", "nzzzv") -- set the cursor to center when searching terms
keymap.set("n", "N", "Nzzzv")

keymap.set("x", "<leader>p", [["_dP]]) --delete the keyword to void register

-- next greatest remap ever : asbjornHaland -- yank to system clipboard
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- dealing with buffers
keymap.set('n', '<TAB>', ':bnext<CR>')
keymap.set('n', '<S-TAB>', ':bprevious<CR>')
keymap.set('n', '<ESC><ESC>', ':bd<CR>')

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- no arrow keys for you
keymap.set({"n","i", "v"}, "<UP>", "<nop>")
keymap.set({"n","i", "v"}, "<DOWN>", "<nop>")
keymap.set({"n","i", "v"}, "<LEFT>", "<nop>")
keymap.set({"n","i", "v"}, "<RIGHT>", "<nop>")
