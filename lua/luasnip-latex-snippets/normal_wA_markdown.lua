local ls = require("luasnip")

local normal_wA = {
	ls.parser.parse_snippet({ trig = "mk", name = "Math" }, "$${1:${TM_SELECTED_TEXT}}$$0"),
	ls.parser.parse_snippet({ trig = "kk", name = "Math" }, "$${1:${TM_SELECTED_TEXT}}$$0"),
	ls.parser.parse_snippet({ trig = "mm", name = "Block Math" }, "\n\n$$\n${1:${TM_SELECTED_TEXT}}\n$$\n$0"),
}

return normal_wA
