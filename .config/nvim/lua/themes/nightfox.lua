local status_ok, theme = pcall(require, "nightfox")
if not status_ok then
    return
end
-- Default options
theme.setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = false, -- Disable setting background
        styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
            operators = "bold",
        },
        terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false, -- Non focused panes set to alternative background
        inverse = { -- Inverse highlight for different types
            match_paren = true,
            visual = true,
            search = true,
        },
        modules = { -- List of various plugins and additional options
            -- ...
        },
    }
})

-- setup must be called before loading
vim.cmd("colorscheme nordfox")
