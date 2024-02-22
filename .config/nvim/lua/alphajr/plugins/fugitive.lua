-- import fugitive plugin safely
local fugitive_setup, fugitive = pcall(require, "fugitive")
if not fugitive_setup then
    return
end

-- configure fugitive
fugitive.setup({})
