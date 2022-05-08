local status, hop = pcall(require, "hop")
if (not status) then return end

require'hop'.setup({
  keys = 'etovxqpdygfblzhckisuran'
})

local map = vim.api.nvim_set_keymap

map("n", "<leader>e", "<cmd>lua require'hop'.hint_words()<cr>", {})
map("n", "<leader>r", "<cmd>lua require'hop'.hint_lines()<cr>", {})
map("v", "<leader>e", "<cmd>lua require'hop'.hint_words()<cr>", {})
map("v", "<leader>r", "<cmd>lua require'hop'.hint_lines()<cr>", {})

