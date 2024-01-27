-- import tailwind-sorter plugin safely
local status, tailwindsorter = pcall(require, "tailwind-sorter")
if not status then
  return
end

tailwindsorter.setup({
  on_save_enabled = true, -- If `true`, automatically enables on save sorting.
  on_save_pattern = { '*.html', '*.js', '*.jsx', '*.tsx', '*.php' }, -- The file patterns to watch and sort.
  node_path = 'node',
})
