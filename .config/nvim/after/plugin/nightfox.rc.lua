local status, nightfox = pcall(require, "nightfox")
if (not status) then return end

local specs = {
    -- As with palettes, the values defined under `all` will be applied to every style.
    all = {
        syntax = {
        -- Specs allow you to define a value using either a color or template. If the string does
        -- start with `#` the string will be used as the path of the palette table. Defining just
        -- a color uses the base version of that color.

        -- Adding either `.bright` or `.dim` will change the value
            conditional = "magenta.bright",
            number = "orange.dim",
            comments = "italic",
            keywords = "bold",
            types = "italic,bold", -- Value is any valid attr-list value `:help attr-list`
            constants = "NONE",
            functions = "bold",
            operators = "bold",
            strings = "NONE",
            variables = "NONE",
        },
        git = {
        -- A color define can also be used
        changed = "#f4a261",
        },
    },
    nightfox = {
    syntax = {
        -- As with palettes, a specific style's value will be used over the `all`'s value.
        operator = "orange",
    },
    },
}

local palettes = {
  -- Everything defined under `all` will be applied to each style.
  all = {
    -- Each palette defines these colors:
    --   black, red, green, yellow, blue, magenta, cyan, white, orange, pink
    --
    -- These colors have 3 shades: base, bright, and dim
    --
    -- Defining just a color defines it's base color
    red = "#ff0000",
  },
  nightfox = {
    -- A specific style's value will be used over the `all`'s value
  },
  dayfox = {
    -- Defining multiple shades is done by passing a table
  },
  dawnfox = {
  },
  nordfox = {
    -- A palette also defines the following:
    --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
    --
    -- These are the different foreground and background shades used by the theme.
    -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
    -- incrementally lighter versions.
    bg1 = "#2e3440",

    -- sel is different types of selection colors.
    sel0 = "#3e4a5b", -- Popup bg, visual selection bg
    sel1 = "#4f6074", -- Popup sel bg, search bg

    -- comment is the definition of the comment color.
    comment = "#60728a",
  },
}

nightfox.setup({
    options = {
        transparent = true,
        styles = {
            conditional = "magenta.bright",
            number = "orange.dim",
            comments = "italic",
            keywords = "bold",
            types = "italic,bold", -- Value is any valid attr-list value `:help attr-list`
            constants = "NONE",
            functions = "bold",
            operators = "bold",
            strings = "NONE",
            variables = "NONE",
        }
    },
    palettes = palettes,
    specs = specs,
})