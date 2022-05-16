local status_ok, theme = pcall(require, "github-theme")
if not status_ok then
    return
end

theme.setup({
    theme_style = "dimmed",
    transparent = true,
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
            -- this will remove the highlight groups
            TSField = {},
            Visual = { style = 'inverse' },
            Search = { style = 'inverse' },
        }
    end
})
