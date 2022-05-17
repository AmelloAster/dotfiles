local status_ok, indent = pcall(require, 'indent_blankline')
if not status_ok then
    return
end

vim.opt.list = true
vim.opt.listchars:append("eol:↴")

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#789395 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#f4bbbb gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#e5e3c9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#90aacb gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#b4cfb0 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#97dbae gui=nocombine]]

vim.g.indent_blankline_context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
}

indent.setup {
    char = "",
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
