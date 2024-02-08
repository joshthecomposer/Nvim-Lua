local colors = {
    bg = "#161821",
    fg = "#c6c8d1",
    default = "#cbb390",
    comment = "#87919d",
    string = "#d4bc7d",
    variable = "#c6c8d1",
    func = "#d0c5a9",
    keyword = "#e67d74",
    type = "#82aaa3",
    cursorLine = "#3a3a3a",
    cursorLineNr = "#cbb390",
    lineNr = "#cbb390",
    statusLine = "#cbb390",
    vertSplit = "#cbb390",
    visual = "#464646",
    matchParen = "#cbb390",
}

local function set_highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=" .. colors.fg
    local bg = color.bg and "guibg=" .. color.bg or "guibg=" .. colors.bg
    local sp = color.sp and "guisp=" .. color.sp or ""
    local cmd = string.format("highlight %s %s %s %s %s", group, style, fg, bg, sp)
    vim.cmd(cmd)
end

local function apply_colorscheme()
    vim.o.background = "dark"

    set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
    set_highlight("Comment", { fg = colors.comment, bg = colors.bg })
    set_highlight("String", { fg = colors.fg, bg = colors.bg })
    set_highlight("Variable", { fg = colors.fg, bg = colors.bg })
    set_highlight("Function", { fg = colors.fg, bg = colors.bg })
    set_highlight("Keyword", { fg = colors.fg, bg = colors.bg })
    set_highlight("Type", { fg = colors.type })
	set_highlight("SignColumn", {fg = colors.fg, bg= colors.bg })

    set_highlight("CursorLine", { bg = colors.cursorLine })
    set_highlight("CursorLineNr", { fg = colors.cursorLineNr })
    set_highlight("LineNr", { fg = colors.lineNr })
    set_highlight("StatusLine", { fg = colors.statusLine, bg = colors.default })
    set_highlight("VertSplit", { fg = colors.vertSplit, bg = colors.default })
    set_highlight("Visual", { bg = colors.visual })
    set_highlight("MatchParen", { fg = colors.matchParen, style = "bold" })
end

apply_colorscheme()
