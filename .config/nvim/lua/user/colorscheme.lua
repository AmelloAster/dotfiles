-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "darkplus"
local colorscheme = "github_dimmed"
-- require "user.conf.github-nvim-theme"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

if colorscheme == "onedark" then
  require "user.themes.onedark"
elseif colorscheme == "catppuccin" then
  require "user.themes.catppuccin"
elseif colorscheme ~= "github" then
  require "user.themes.github-nvim-theme"
end
