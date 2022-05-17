local status_ok, theme = pcall(require, "nightfox")
if not status_ok then
    return
end
-- Default options
local hour = os.date("*t").hour
local color = 'colorscheme nordfox'

if hour < 18 and hour > 7 then
    color = 'colorscheme dawnfox'
end

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
            match_paren = false,
            visual = false,
            search = false,
        },
        modules = { -- List of various plugins and additional options
            -- ...
        },
    }
})

-- setup must be called before loading
vim.cmd(color)
