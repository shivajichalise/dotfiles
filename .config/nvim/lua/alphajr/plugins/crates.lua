-- import crates plugin safely
local status, crates = pcall(require, "crates")
if not status then
    return
end

crates.setup()
