-- import nvim-surround plugin safely
local setup, nvimsurround = pcall(require, "nvim-surround")
if not setup then
	return
end

nvimsurround.setup()
