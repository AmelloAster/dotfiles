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
    'tailwindcss',
    'dockerls',
    'denols',
    'rust_analyzer',
    'angularls',
    'cssmodules_ls',
    'html',
    'svelte',
    'taplo',
    'volar'
}

lsp_installer.setup({
    ensure_installed = servers,
    automatic_installation = true,
})

for _, name in ipairs(servers) do
    -- Specify the default options which we'll use to setup all servers
    local default_opts = require('lsp.opts')

    -- Enhance the default opts with the server-specific ones
    pcall(function()
        require('lsp.servers.' .. name).setup(default_opts)
    end)

    require('lspconfig')[name].setup(default_opts)
end
