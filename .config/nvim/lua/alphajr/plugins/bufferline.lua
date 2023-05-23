-- import lualine plugin safely
local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup()

