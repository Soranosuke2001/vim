vim9script

# --- Python Syntax Flags ---
g:python_highlight_all = 1
g:python_highlight_builtins = 1
g:python_highlight_builtin_objs = 1
g:python_highlight_builtin_types = 1
g:python_highlight_builtin_funcs = 1
g:python_highlight_operators = 1
g:python_highlight_space_errors = 0
g:python_highlight_string_formatting = 1
g:python_highlight_string_format = 1
g:python_highlight_string_templates = 1
g:python_highlight_indent_errors = 1


# --- Palette Variables ---
var light_turquoise = "#97C2C2"
var dark_blue       = "#569CD6"
var purple          = "#bb9af7"
var dark_orange     = "#c37c2b"
var orange          = "#FF9C2B"
var light_yellow    = "#e6c888"
var light_red       = "#fe4343"
var light_brown     = "#CE9178"
var brown           = "#854422"
var light_grey      = "#5C6370"
var grey            = "#565f89"

var bg_popup        = "#262626"
var bg_popup_second = "#444444"


# --- Search Highlights ---
g:Hi("Search",    g:bg_main,       orange,          "NONE")
g:Hi("IncSearch", light_turquoise, g:bg_main,       "NONE")
g:Hi("CurSearch", g:bg_main,       light_turquoise, "bold")

# --- Popup Menu (Pmenu) ---
g:Hi("Pmenu",      g:fg_main, bg_popup,        "NONE")
g:Hi("PmenuSel",   g:fg_main, bg_popup_second, "bold")
g:Hi("PmenuMatch", g:fg_main, "NONE",          "bold")
g:Hi("PmenuSbar",  "NONE",    bg_popup,        "NONE")
g:Hi("PmenuThumb", "NONE",    g:fg_main,       "NONE")

# --- LSP Signs (Gutter) ---
g:Hi("LspErrorText",       light_red,  "NONE", "NONE")
g:Hi("LspWarningText",     orange,     "NONE", "NONE")
g:Hi("LspInformationText", light_grey, "NONE", "NONE")
g:Hi("LspHintText",        light_grey, "NONE", "NONE")

# --- LSP Inline Highlights ---
g:Hi("LspErrorHighlight",       "NONE", "NONE", "undercurl")
g:Hi("LspWarningHighlight",     "NONE", "NONE", "undercurl")
g:Hi("LspInformationHighlight", "NONE", "NONE", "underline")
g:Hi("LspHintHighlight",        "NONE", "NONE", "underline")

# --- LSP Virtual Text ---
g:Hi("LspErrorVirtualText",       light_red,  "NONE", "NONE")
g:Hi("LspWarningVirtualText",     orange,     "NONE", "NONE")
g:Hi("LspInformationVirtualText", light_grey, "NONE", "NONE")
g:Hi("LspHintVirtualText",        light_grey, "NONE", "NONE")

# --- Python Syntax Highlights ---
g:Hi("Normal",              g:fg_main,    "NONE", "NONE")
g:Hi("pythonComment",       grey,         "NONE", "italic")
g:Hi("pythonTodo",          orange,       "NONE", "bold,italic")

g:Hi("String",              light_brown,  "NONE", "NONE")
g:Hi("pythonString",        light_brown,  "NONE", "NONE")
g:Hi("pythonRawString",     light_brown,  "NONE", "NONE")
g:Hi("pythonQuotes",        light_brown,  "NONE", "NONE")
g:Hi("pythonTripleQuotes",  light_brown,  "NONE", "italic")

g:Hi("pythonNumber",        dark_orange,  "NONE", "NONE")
g:Hi("pythonEscape",        dark_orange,  "NONE", "NONE")
g:Hi("pythonSpaceError",    "NONE",       "NONE", "NONE")

g:Hi("pythonBuiltin",       dark_blue,    "NONE", "NONE")
g:Hi("pythonClass",         dark_blue,    "NONE", "bold")
g:Hi("pythonClassVar",      dark_blue,    "NONE", "bold")
g:Hi("pythonFunction",      light_yellow, "NONE", "bold")
g:Hi("pythonInclude",       purple,       "NONE", "NONE")
g:Hi("pythonStatement",     dark_blue,    "NONE", "NONE")
g:Hi("pythonDecorator",     g:fg_main,    "NONE", "NONE")
g:Hi("pythonDecoratorName", g:fg_main,    "NONE", "NONE")
g:Hi("pythonOperator",      purple,       "NONE", "NONE")
g:Hi("pythonConditional",   purple,       "NONE", "NONE")
g:Hi("pythonRepeat",        purple,       "NONE", "NONE")
g:Hi("pythonException",     purple,       "NONE", "bold")
g:Hi("pythonExceptions",    dark_blue,    "NONE", "NONE")

execute g:general_dir
