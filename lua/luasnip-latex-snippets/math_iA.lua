local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node
local with_priority = require("luasnip-latex-snippets.util.utils").with_priority

local math_iA = {
	s(
		{
			trig = "(%a)bar",
			wordTrig = false,
			regTrig = true,
			name = "bar",
			priority = 100,
		},
		f(function(_, snip)
			return string.format("\\overline{%s}", snip.captures[1])
		end, {})
	),
	s(
		{
			trig = "(%a)hat",
			wordTrig = false,
			regTrig = true,
			name = "hat",
			priority = 100,
		},
		f(function(_, snip)
			return string.format("\\hat{%s}", snip.captures[1])
		end, {})
	),
	s(
		{
			trig = "(%a)cal",
			wordTrig = false,
			regTrig = true,
			name = "mathcal",
			priority = 100,
		},
		f(function(_, snip)
			return string.format("\\mathcal{%s}", snip.captures[1])
		end, {})
	),
	s(
		{
			trig = "(%a)bf",
			wordTrig = false,
			regTrig = true,
			name = "mathbf",
			priority = 100,
		},
		f(function(_, snip)
			return string.format("\\bm{%s}", snip.captures[1])
		end, {})
	),

	ls.parser.parse_snippet({ trig = "td", name = "to the ... power ^{}" }, "^{$1}$0"),
	ls.parser.parse_snippet({ trig = "rd", name = "to the ... power ^{()}" }, "^{($1)}$0"),
	ls.parser.parse_snippet({ trig = "cb", name = "Cube ^3" }, "^3"),
	ls.parser.parse_snippet({ trig = "sr", name = "Square ^2" }, "^2"),
	ls.parser.parse_snippet({ trig = "ge", name = ">=" }, "\\ge "),
	ls.parser.parse_snippet({ trig = "le", name = "<=" }, "\\le "),

	ls.parser.parse_snippet({ trig = "11", name = "indicator" }, "\\bm{1}"),
	ls.parser.parse_snippet({ trig = "ee", name = "exists" }, "\\exists"),
	ls.parser.parse_snippet({ trig = "aa", name = "forall" }, "\\forall"),
	ls.parser.parse_snippet({ trig = "xnn", name = "xn" }, "x_{n}"),
	ls.parser.parse_snippet({ trig = "Xnn", name = "Xn" }, "X_{n}"),
	ls.parser.parse_snippet({ trig = "ynn", name = "yn" }, "y_{n}"),
	ls.parser.parse_snippet({ trig = "Ynn", name = "Yn" }, "Y_{n}"),
	ls.parser.parse_snippet({ trig = "ii", name = "sub_i" }, "_{i}"),
	ls.parser.parse_snippet({ trig = "jj", name = "sub_j" }, "_{j}"),
	ls.parser.parse_snippet({ trig = "xp1", name = "x" }, "x_{n+1}"),
	ls.parser.parse_snippet({ trig = "xmm", name = "x" }, "x_{m}"),
	ls.parser.parse_snippet({ trig = "R0+", name = "R0+" }, "\\mathbb{R}_0^+"),

	ls.parser.parse_snippet({ trig = "notin", name = "not in " }, "\\not\\in"),

	ls.parser.parse_snippet({ trig = "cc", name = "subset" }, "\\subset"),

	with_priority(ls.parser.parse_snippet({ trig = "<->", name = "leftrightarrow" }, "\\leftrightarrow"), 200),
	with_priority(ls.parser.parse_snippet({ trig = "...", name = "ldots" }, "\\ldots"), 100),
	ls.parser.parse_snippet({ trig = "!>", name = "mapsto" }, "\\mapsto"),
	ls.parser.parse_snippet({ trig = "iff", name = "iff" }, "\\iff"),
	ls.parser.parse_snippet({ trig = "ooo", name = "\\infty" }, "\\infty"),
	ls.parser.parse_snippet({ trig = "rij", name = "mrij" }, "(${1:x}_${2:n})_{${3:$2}\\in${4:\\N}}$0"),
	ls.parser.parse_snippet({ trig = "nabl", name = "nabla" }, "\\nabla"),
	ls.parser.parse_snippet({ trig = "<!", name = "normal" }, "\\triangleleft"),
	ls.parser.parse_snippet({ trig = "floor", name = "floor" }, "\\left\\lfloor $1 \\right\\rfloor$0"),
	ls.parser.parse_snippet({ trig = "//", name = "Fraction" }, "\\frac{$1}{$2}$0"),
	ls.parser.parse_snippet({ trig = "\\\\\\", name = "setminus" }, "\\setminus"),
	with_priority(ls.parser.parse_snippet({ trig = "to", name = "to" }, "\\to "), 100),

	ls.parser.parse_snippet({ trig = "letw", name = "let omega" }, "Let $\\Omega \\subset \\C$ be open."),
	ls.parser.parse_snippet({ trig = "nnn", name = "bigcap" }, "\\bigcap_{$1} $0"),
	ls.parser.parse_snippet({ trig = "norm", name = "norm" }, "\\|$1\\|$0"),
	ls.parser.parse_snippet({ trig = "<>", name = "hokje" }, "\\diamond"),
	ls.parser.parse_snippet({ trig = ">>", name = ">>" }, "\\gg"),
	ls.parser.parse_snippet({ trig = "<<", name = "<<" }, "\\ll"),

	ls.parser.parse_snippet({ trig = "stt", name = "text subscript" }, "_\\text{$1} $0"),
	ls.parser.parse_snippet({ trig = "tt", name = "text" }, "\\text{$1}$0"),

	ls.parser.parse_snippet({ trig = "oxx", name = "cross" }, "\\otimes"),
	ls.parser.parse_snippet({ trig = "xx", name = "cross" }, "\\times"),

	with_priority(ls.parser.parse_snippet({ trig = "**", name = "cdot" }, "\\cdot"), 100),

	ls.parser.parse_snippet(
		{ trig = "cvec", name = "column vector" },
		"\\begin{pmatrix} ${1:x}_${2:1}\\\\ \\vdots\\\\ $1_${2:n} \\end{pmatrix}"
	),
	ls.parser.parse_snippet({ trig = "ceil", name = "ceil" }, "\\left\\lceil $1 \\right\\rceil $0"),
	ls.parser.parse_snippet({ trig = "OO", name = "emptyset" }, "\\emptyset"),
	ls.parser.parse_snippet({ trig = "RR", name = "R" }, "\\mathbb{R}"),
	ls.parser.parse_snippet({ trig = "QQ", name = "Q" }, "\\mathbb{Q}"),
	ls.parser.parse_snippet({ trig = "ZZ", name = "Z" }, "\\mathbb{Z}"),
	ls.parser.parse_snippet({ trig = "cup", name = "cup" }, "\\cup"),
	ls.parser.parse_snippet({ trig = "NN", name = "n" }, "\\mathbb{N}"),
	ls.parser.parse_snippet({ trig = "||", name = "mid" }, " \\mid"),
	ls.parser.parse_snippet({ trig = "cap", name = "cap" }, "\\cap"),
	ls.parser.parse_snippet({ trig = "bmat", name = "bmat" }, "\\begin{bmatrix} $1 \\end{bmatrix} $0"),
	ls.parser.parse_snippet({ trig = "uuu", name = "bigcup" }, "\\bigcup_{$1} $0"),
	ls.parser.parse_snippet({ trig = "TT", name = "Time set" }, "\\mathbb{T}"),
	ls.parser.parse_snippet({ trig = "DD", name = "D" }, "\\mathbb{D}"),
	ls.parser.parse_snippet({ trig = "HH", name = "H" }, "\\mathbb{H}"),
	ls.parser.parse_snippet({ trig = "XX", name = "space" }, "\\mathbb{X}"),
	ls.parser.parse_snippet({ trig = "FF", name = "filtration" }, "\\mathbb{F}"),
	ls.parser.parse_snippet({ trig = "EE", name = "Expecation" }, "\\mathop{{}\\mathbb{E}}_{$1}$0"),
	ls.parser.parse_snippet({ trig = "PP", name = "Probability" }, "\\mathop{{}\\mathbb{P}}"),
	ls.parser.parse_snippet({ trig = "VV", name = "variance" }, "\\mathop{{}\\mathbb{V}}"),
	ls.parser.parse_snippet({ trig = "lll", name = "l" }, "\\ell"),
	ls.parser.parse_snippet({ trig = "mpt", name = "mapsto" }, "\\mapsto "),
	with_priority(
		ls.parser.parse_snippet(
			{ trig = "dint", name = "integral" },
			"\\int_{${1:-\\infty}}^{${2:\\infty}} ${3:${TM_SELECTED_TEXT}} $0"
		),
		300
	),

	ls.parser.parse_snippet({ trig = "==", name = "equals" }, [[&= $1 \\\\]]),
	ls.parser.parse_snippet({ trig = "!=", name = "not equals" }, "\\neq"),
	ls.parser.parse_snippet({ trig = "compl", name = "complement" }, "^{c}"),
	ls.parser.parse_snippet({ trig = "__", name = "subscript" }, "_{$1}$0"),
	ls.parser.parse_snippet({ trig = "sub", name = "subscript" }, "_{$1}$0"),
	ls.parser.parse_snippet({ trig = "=>", name = "implies" }, "\\implies"),
	ls.parser.parse_snippet({ trig = "=<", name = "implied by" }, "\\impliedby"),
	ls.parser.parse_snippet({ trig = "<<", name = "<<" }, "\\ll"),

	ls.parser.parse_snippet({ trig = "<=", name = "leq" }, "\\le"),
	ls.parser.parse_snippet({ trig = ">=", name = "geq" }, "\\ge"),
	ls.parser.parse_snippet({ trig = "invs", name = "inverse" }, "^{-1}"),
	ls.parser.parse_snippet({ trig = "~~", name = "~" }, "\\sim"),
	ls.parser.parse_snippet({ trig = "conj", name = "conjugate" }, "\\overline{$1}$0"),
	ls.parser.parse_snippet({ trig = "dd", name = "d" }, " \\mathrm{\\ d}"),
	ls.parser.parse_snippet({ trig = "mrm", name = "mathrm" }, "\\mathrm{$1}$0"),
	ls.parser.parse_snippet({ trig = "vphi", name = "varphi",priority=201 }, "\\varphi"),
	ls.parser.parse_snippet({ trig = "card", name = "cardinal",priority=201 }, "\\text{card}\\left( ${1:${TM_SELECTED_TEXT}} \\right)$0"),
}

return math_iA
