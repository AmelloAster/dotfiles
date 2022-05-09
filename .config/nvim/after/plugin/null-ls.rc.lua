local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

on_attach = function(client)
    if client.server_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
end

null_ls.setup({
    on_attach = on_attach,
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})