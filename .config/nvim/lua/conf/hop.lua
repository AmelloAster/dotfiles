-- https://github.com/phaazon/hop.nvim
local status_ok, hop = pcall(require, "hop")
if not status_ok then
    vim.notify("hop not found!")
    return
end
hop.setup()

-- place this in one of your configuration file(s)
-- enhance f motion

vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})

vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', '<leader>e', "<cmd>HopWord<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>r', "<cmd>HopLine<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>e', "<cmd>HopLines<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>r', "<cmd>HopWords<cr>", {})
