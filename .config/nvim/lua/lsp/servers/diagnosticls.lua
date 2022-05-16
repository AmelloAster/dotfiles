local diagnostic = {}

diagnostic = {
    filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'pandoc' },
    init_options = {
        linters = {
            eslint = {
                command = 'eslint_d',
                root_dir = { '.git' },
                debounce = 100,
                args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
                sourceName = 'eslint_d',
                parseJson = {
                    errorsRoot = '[0].messages',
                    line = 'line',
                    column = 'column',
                    endLine = 'endLine',
                    endColumn = 'endColumn',
                    message = '[eslint] ${message} [${ruleId}]',
                    security = 'severity'
                },
                securities = {
                    [2] = 'error',
                    [1] = 'warning'
                }
            },
        },
        filetypes = {
            javascript = 'eslint',
            javascriptreact = 'eslint',
            typescript = 'eslint',
            typescriptreact = 'eslint',
        },
        formatters = {
            eslint_d = {
                command = 'eslint_d',
                root_dir = { '.git' },
                args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
            },
            prettier = {
                command = 'prettier_d_slim',
                root_dir = { '.git' },
                -- requiredFiles: { 'prettier.config.js' },
                args = { '--stdin', '--stdin-filepath', '%filename' }
            },
        },
        formatFiletypes = {
            css = 'prettier',
            javascript = 'prettier',
            javascriptreact = 'prettier',
            scss = 'prettier',
            less = 'prettier',
            typescript = 'prettier',
            typescriptreact = 'prettier',
            json = 'prettier',
        }
    },
}

return diagnostic
