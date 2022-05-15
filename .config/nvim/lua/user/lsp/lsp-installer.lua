local ts_status_ok, ts_utils = pcall(require, 'nvim-lsp-ts-utils')
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  vim.notify("nvim-lspconfig not found!")
  return
end
-- NOTE: 如果发现某些lsp server安装启动时出现， client exit x and signal 0 等错误
-- 可能是因为node版本过低， 升级node版本即可
-- 升级方法
-- npm cache clean -f
-- npm install -g n
-- n stable

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }

  if server.name == "clangd" then
    local clangd_opts = require("user.lsp.settings.clangd")
    opts = vim.tbl_deep_extend("keep", clangd_opts, opts)
  end

  if server.name == "jsonls" then
    local jsonls_opts = require("user.lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("keep", jsonls_opts, opts)
  end

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("user.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("keep", sumneko_opts, opts)
  end

  if server.name == "pyright" then
    local pyright_opts = require("user.lsp.settings.pyright")
    opts = vim.tbl_deep_extend("keep", pyright_opts, opts)
  end

  if server.name == 'denols' then
    local denols_opts = require("user.lsp.settings.denols")
    opts = vim.tbl_deep_extend("keep", denols_opts, opts)
    opts.init_options = {
      enable = false
    }
  end
  if server.name == 'diagnosticls' then
    local diagnosticls_opts = require("user.lsp.settings.diagnosticls")
    opts = vim.tbl_deep_extend("keep", diagnosticls_opts, opts)
  end
  if server.name == 'tsserver' then
    local tsserver_opts = require("user.lsp.settings.tsserver")
    opts = vim.tbl_deep_extend("keep", tsserver_opts, opts)
  end
  if server.name == 'tailwindcss' then
    local tailwindcss_opts = require("user.lsp.settings.tailwindcss")
    opts = vim.tbl_deep_extend("keep", tailwindcss_opts, opts)
  end
  -- This setup() function is exactly the same as lspconfig's setup function.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  server:setup(opts)
end)
