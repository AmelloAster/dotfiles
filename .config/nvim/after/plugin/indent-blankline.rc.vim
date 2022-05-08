lua << EOF
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append("eol:↴")

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#789395 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#f4bbbb gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#e5e3c9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#90aacb gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#b4cfb0 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#97dbae gui=nocombine]]

require("indent_blankline").setup {
		space_char_blankline = " ",
		show_blankline=true,
		show_current_context = true,
    show_current_context_start = true,
		show_end_of_line=true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}

EOF
