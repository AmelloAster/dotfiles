if vim.g.vscode then
    require "conf/lightspeed"
    require "plugins"
    require "options"
    require "vsckeymaps"
else
    require "options"
    require "utils"
    require "keymaps"
    require "plugins"
    require "conf"
    require "lsp"
    require "colorscheme"
end
