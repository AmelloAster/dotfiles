-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "nightfox"
local colorscheme = "github_dimmed"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end

if colorscheme == "onedark" then
    require "themes.onedark"
elseif colorscheme == "catppuccin" then
    require "themes.catppuccin"
elseif colorscheme == "nightfox" then
    require "themes.nightfox"
elseif colorscheme ~= "github" then
    require "themes.github-nvim-theme"
end
