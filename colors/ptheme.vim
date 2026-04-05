vim9script

# Live view changes
# let g:color_timer = timer_start(500, {-> execute('colorscheme ptheme')}, {'repeat': -1})

# Reset the colorscheme
hi clear
if exists("syntax_on")
    syntax reset
endif
g:colors_name = "ptheme"

# Git Signs 
sign define GitAdd    text=+ texthl=GitAdd
sign define GitChange text=~ texthl=GitChange
sign define GitDelete text=- texthl=GitDelete

# Usage: Hi(Group, Foreground, Background, Style)
def Hi(group: string, fg: string, bg: string = "NONE", gui: string = "NONE")
    var cmd = $"hi! {group} guifg={fg} guibg={bg} gui={gui}"
    execute cmd
enddef

g:python_highlight_all = 1
g:python_highlight_builtins = 1
g:python_highlight_builtin_objs = 1
g:python_highlight_builtin_types = 1
g:python_highlight_builtin_funcs = 1
g:python_highlight_operators = 1
g:python_highlight_space_errors = 1
g:python_highlight_string_formatting = 1
g:python_highlight_string_format = 1
g:python_highlight_string_templates = 1
g:python_highlight_indent_errors = 1

# Variables
var bg_main             = "#181818"
var fg_main             = "#CCCCCC"
var fg_second           = "#1a1b26"

var light_turquoise     = "#97C2C2"
var blue                = "#7aa2f7"
var light_blue          = "#5B7BC2"
var blueish_grey        = "#292e42"
var dark_blue           = "#1f2335"
var purple              = "#bb9af7"
var orange              = "#FF9C2B"
var yellow              = "#ffca2b"
var light_red           = "#fe4343"
var red                 = "#FF0000"
var brown               = "#854422"
var green               = "#67BF6D"
var light_grey          = "#5C6370"
var grey                = "#565f89"
var steel_grey          = "#3B3A3A"

# Syntax
Hi("Normal",                "#cfc9c2", "#181818", "NONE")
Hi("NonText",               "#3b4261", "NONE",    "NONE")
Hi("SpecialKey",            "#3b4261", "NONE",    "NONE")

Hi("Comment",               "#565f89", "NONE",    "italic")
Hi("pythonComment",         "#565f89", "NONE",    "italic")
Hi("pythonTodo",            "#ff9e64", "NONE",    "bold,italic")

Hi("String",                "#9ece6a", "NONE",    "NONE")
Hi("pythonString",          "#9ece6a", "NONE",    "NONE")
Hi("pythonRawString",       "#9ece6a", "NONE",    "NONE")
Hi("pythonQuotes",          "#9ece6a", "NONE",    "NONE")
Hi("pythonTripleQuotes",    "#565f89", "NONE",    "italic")
Hi("pythonEscape",          "#bb9af7", "NONE",    "NONE")
Hi("pythonFormat",          "#bb9af7", "NONE",    "NONE")

Hi("Statement",             "#bb9af7", "NONE",    "bold")
Hi("pythonStatement",       "#bb9af7", "NONE",    "bold")
Hi("pythonConditional",     "#bb9af7", "NONE",    "NONE")
Hi("pythonRepeat",          "#bb9af7", "NONE",    "NONE")
Hi("pythonOperator",        "#bb9af7", "NONE",    "NONE")
Hi("pythonException",       "#f7768e", "NONE",    "bold")
Hi("pythonExceptions",      "#f7768e", "NONE",    "NONE")
Hi("pythonAsync",           "#bb9af7", "NONE",    "bold") # async, await
Hi("pythonYield",           "#bb9af7", "NONE",    "bold")

Hi("Function",              "#7aa2f7", "NONE",    "bold")
Hi("pythonFunction",        "#7aa2f7", "NONE",    "bold")
Hi("pythonBuiltinFunc",     "#2ac3de", "NONE",    "NONE")
Hi("pythonBuiltin",         "#2ac3de", "NONE",    "NONE")

Hi("Type",                  "#73daca", "NONE",    "NONE")
Hi("pythonBuiltinType",     "#73daca", "NONE",    "italic")
Hi("pythonClass",           "#73daca", "NONE",    "bold")
Hi("StorageClass",          "#bb9af7", "NONE",    "NONE")
Hi("Structure",             "#bb9af7", "NONE",    "NONE")
Hi("Typedef",               "#e0af68", "NONE",    "italic")

Hi("Constant",              "#ff9e64", "NONE",    "NONE")
Hi("Number",                "#ff9e64", "NONE",    "NONE")
Hi("Float",                 "#ff9e64", "NONE",    "NONE")
Hi("Boolean",               "#ff9e64", "NONE",    "bold")
Hi("pythonNumber",          "#ff9e64", "NONE",    "NONE")
Hi("pythonNone",            "#ff9e64", "NONE",    "bold")

Hi("PreProc",               "#7dcfff", "NONE",    "NONE")
Hi("Include",               "#7dcfff", "NONE",    "NONE")
Hi("pythonInclude",         "#7dcfff", "NONE",    "NONE")
Hi("pythonImport",          "#7dcfff", "NONE",    "NONE")

Hi("pythonDecorator",       "#ff007c", "NONE",    "NONE")
Hi("pythonDecoratorName",   "#ff007c", "NONE",    "italic")
Hi("pythonAttribute",       "#7aa2f7", "NONE",    "NONE")

Hi("Delimiter",             "#cfc9c2", "NONE",    "NONE")
Hi("Operator",              "#bb9af7", "NONE",    "NONE")
Hi("pythonBrackets",        "#ff9e64", "NONE",    "NONE") # Braces in f-strings
Hi("pythonDot",             "#cfc9c2", "NONE",    "NONE")

Hi("pythonSelf",            "#ff9e64", "NONE",    "italic") # 'self'
Hi("pythonDottedName",      "#cfc9c2", "NONE",    "NONE")
Hi("Special",               "#bb9af7", "NONE",    "NONE")

Hi("Error",                 "#181818", "#f7768e", "bold")
Hi("pythonSpaceError",      "NONE",    "#f7768e", "NONE")
Hi("Todo",                  "#181818", "#e0af68", "bold")







# General
Hi("Normal",    fg_main,  bg_main)
Hi("Conceal",   blue,     "NONE")

# netrw
Hi("Directory", blue)

# Code
Hi("Visual",        "NONE",     steel_grey,   "NONE")
Hi("EndOfBuffer",   bg_main,    "NONE",       "NONE")
Hi("Folded",        grey,       blueish_grey, "NONE")
Hi("FoldColumn",    grey,       "NONE",       "NONE")
Hi("MatchParen",    orange,     "#3b4261",  "bold")

# Window
Hi("VertSplit", "#3b4261")

# Command Line
Hi("WarningMsg", orange)
Hi("ErrorMsg", red, "NONE", "bold")
Hi("WildMenu", fg_main, grey)
Hi("QuickFixLine", fg_main, dark_blue, "bold")

# Sign Column
Hi("LineNr", grey)
Hi("SignColumn", fg_main)
Hi("GitAdd", green)
Hi("GitChange", orange)
Hi("GitDelete", red)

# StatusLine
Hi("StatusLine", dark_blue, fg_main)
Hi("StatusMain", "#565f89", dark_blue)

# Statusline Mode
Hi("StatusNormal",  fg_second, blue,   "bold")
Hi("StatusInsert",  fg_second, green,  "bold")
Hi("StatusVisual",  fg_second, purple, "bold")
Hi("StatusReplace", fg_second, orange, "bold")

# Statusline Data
Hi("StatusGit",      fg_main,   dark_blue, "italic")
Hi("StatusFile",     fg_main,   dark_blue)
Hi("StatusModified", orange,    dark_blue, "bold")
Hi("StatusPos",      fg_second, blue)

# Pagers
Hi("Title", fg_main, "NONE", "bold")
Hi("MoreMsg", grey)
Hi("Question", grey)

# Search
Hi("Search", bg_main, orange)
Hi("IncSearch", light_turquoise, bg_main)
Hi("CurSearch", bg_main,         light_turquoise, "bold")

# Popup menu
Hi("Pmenu", fg_main, "#262626")
Hi("PmenuSel", "#ffffff", "#444444", "bold") 
Hi("PmenuMatch", fg_main, "NONE", "bold")
Hi("PmenuSbar", "NONE", "#262626")
Hi("PmenuThumb", "NONE", fg_main)


# LSP Signs
Hi("LspErrorText", light_red)
Hi("LspWarningText", orange)
Hi("LspInformationText", light_grey)
Hi("LspHintText", light_grey)

# LSP Inline Highlights
Hi("LspErrorHighlight", "NONE", "NONE", "undercurl")
Hi("LspWarningHighlight", "NONE", "NONE", "undercurl")
Hi("LspInformationHighlight", "NONE", "NONE", "underline")
Hi("LspHintHighlight", "NONE", "NONE", "underline")

# Virtual Text
Hi("LspErrorVirtualText", light_red, "NONE")
Hi("LspWarningVirtualText", orange, "NONE")
Hi("LspInformationVirtualText", light_grey, "NONE")
Hi("LspHintVirtualText", light_grey, "NONE")
