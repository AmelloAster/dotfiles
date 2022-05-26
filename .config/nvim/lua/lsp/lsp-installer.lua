local lsp_installer = require('nvim-lsp-installer')

local servers = {
    'cssls',
    'jsonls',
    'yamlls',
    'pyright',
    'sumneko_lua',
    'emmet_ls',
    'tsserver',
    'eslint',
    'dockerls',
    'denols',
    'rust_analyzer',
    'angularls',
    'cssmodules_ls',
    'html',
    'svelte',
    'volar',
    'tailwindcss',
}





lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require("lsp.opts").on_attach,
        capabilities = require("lsp.opts").capabilities,
        flags = {
            debounce_text_changes = 150,
        }
    }
    for _, name in ipairs(servers) do
        if name == server.name then
            local status_ok, sopts = pcall(require, 'lsp.servers.' .. name)
            if status_ok then
                opts = vim.tbl_deep_extend("keep", sopts, opts)
            end
        end
    end
    server:setup(opts)
end)
