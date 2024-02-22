local keymap = vim.keymap

-- import harpoon plugin safely
local harpoon_setup, harpoon = pcall(require, "harpoon")
if not harpoon_setup then
    return
end

-- configure harpoon
harpoon.setup({})

keymap.set("n", "<leader>a", function() harpoon:list():append() end)
keymap.set("n", "<C-p>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
--
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end

-- keymap.set("n", "<C-E>", function() toggle_telescope(harpoon:list()) end,
--     { desc = "Open harpoon window" })
