-- import rust-tools plugin safely
local setup, rusttools = pcall(require, "rust-tools")
if not setup then
    return
end

local opts = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}

rusttools.setup(opts)

