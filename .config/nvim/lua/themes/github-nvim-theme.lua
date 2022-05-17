local status_ok, theme = pcall(require, "github-theme")
if not status_ok then
    return
end

local hour = os.date("*t").hour
local color = 'dimmed'

if hour < 18 and hour > 7 then
    color = "light"
end

theme.setup({
    theme_style = color,
    transparent = false,
    function_style = "italic",
    comment_style = "italic",
    variable_style = "italic",
    sidebars = { "qf", "vista_kind", "terminal", "packer" },

    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    colors = { hint = "orange", error = "#ff0000" },
    dark_sidebar = false,
    hide_inactive_statusline = false,

    -- Overwrite the highlight groups
    overrides = function(c)
        return {
            htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
            DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
            --this will remove the highlight groups
            TSField = {},
            Visual = { style = 'inverse' },
            Search = { style = 'inverse' },
        }
    end
})
