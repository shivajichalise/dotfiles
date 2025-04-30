-- import luasnip plugin safely
local status, ls = pcall(require, "luasnip")
if not status then
	return
end

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("lua", {
	s("hello", {
		t('print("hello world")'),
	}),
})
