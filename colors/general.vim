vim9script

# Usage: Hi(Group, Foreground, Background, Style)
def g:Hi(group: string, fg: string, bg: string = "NONE", gui: string = "NONE")
    var cmd = $"hi! {group} guifg={fg} guibg={bg} gui={gui}"
    execute cmd
enddef

# --- Git Signs ---
sign define GitAdd    text=▏+ texthl=GitAdd
sign define GitChange text=▏~ texthl=GitChange
sign define GitDelete text=▏- texthl=GitDelete


# --- Pagers ---
g:Hi("Title",    g:fg_main, "NONE", "bold")
g:Hi("MoreMsg",  g:grey,    "NONE", "NONE")
g:Hi("Question", g:grey,    "NONE", "NONE")

# --- General ---
g:Hi("Normal",  g:fg_main, g:bg_main, "NONE")
g:Hi("Conceal", g:blue,    "NONE",    "NONE")

# --- netrw ---
g:Hi("Directory",      g:blue,   "NONE", "NONE")
g:Hi("Comment",        g:fg_sub, "NONE", "NONE")
g:Hi("netrwVersion",   g:fg_sub, "NONE", "NONE")
g:Hi("netrwComment",   g:fg_sub, "NONE", "NONE")
g:Hi("netrwCmdNote",   g:fg_sub, "NONE", "NONE")
g:Hi("netrwQuickHelp", g:fg_sub, "NONE", "NONE")
g:Hi("netrwCmdSep",    g:fg_sub, "NONE", "NONE")
g:Hi("netrwHelpCmd",   g:fg_sub, "NONE", "NONE")
g:Hi("netrwList",      g:fg_sub, "NONE", "NONE")
g:Hi("netrwClassify",  g:blue,   "NONE", "NONE")

# --- Code ---
g:Hi("Visual",      "NONE",      g:steel_grey,   "NONE")
g:Hi("EndOfBuffer", g:bg_main,   "NONE",         "NONE")
g:Hi("Folded",      g:grey,      g:blueish_grey, "NONE")
g:Hi("FoldColumn",  g:grey,      "NONE",         "NONE")
g:Hi("MatchParen",  g:orange,    g:steel_grey,   "bold")

# --- Window ---
g:Hi("VertSplit", g:steel_grey, "NONE", "NONE")

# --- Command Line ---
g:Hi("WarningMsg",   g:orange,  "NONE",       "NONE")
g:Hi("ErrorMsg",     g:red,     "NONE",       "bold")
g:Hi("WildMenu",     g:fg_main, g:grey,       "NONE")
g:Hi("QuickFixLine", g:fg_main, g:darker_blue, "bold")

# --- Sign Column ---
g:Hi("LineNr",     g:grey,    "NONE", "NONE")
g:Hi("SignColumn", g:fg_main, "NONE", "NONE")
g:Hi("GitAdd",     g:green,   "NONE", "NONE")
g:Hi("GitChange",  g:orange,  "NONE", "NONE")
g:Hi("GitDelete",  g:red,     "NONE", "NONE")

# --- StatusLine Base ---
g:Hi("StatusLine", g:darker_blue, g:fg_main,     "NONE")
g:Hi("StatusMain", g:darker_blue, g:darker_blue, "NONE")

# --- Statusline Mode ---
g:Hi("StatusNormal",  g:fg_second, g:blue,   "bold")
g:Hi("StatusInsert",  g:fg_second, g:green,  "bold")
g:Hi("StatusVisual",  g:fg_second, g:purple, "bold")
g:Hi("StatusReplace", g:fg_second, g:orange, "bold")

# --- Statusline Data ---
g:Hi("StatusGit",      g:fg_main,   g:darker_blue, "italic")
g:Hi("StatusFile",     g:fg_main,   g:darker_blue, "NONE")
g:Hi("StatusModified", g:orange,    g:darker_blue, "bold")
g:Hi("StatusPos",      g:fg_second, g:blue,        "NONE")
