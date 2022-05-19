local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
keymap("n", "<leader>f", "<cmd>call VSCodeNotify('workbench.view.explorer')<cr>", opts)
-- keymap("n", "<leader>f", ":NvimTreeFindFile<cr>", opts)
keymap("n", "<leader>t", "<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Line transform using 'Alt'
keymap('n', '<A-Up>', "<cmd>all VSCodeNotify('editor.action.moveLinesUpAction')<cr>", opts)
keymap('n', '<A-Down>', "<cmd>call VSCodeNotify('editor.action.moveLinesDownActio')<cr>", opts)
keymap('i', '<A-Up>', "<cmd>call VSCodeNotify('editor.action.moveLinesUpAction')<cr>", opts)
keymap('i', '<A-Down>', "<cmd>call VSCodeNotify('editor.action.moveLinesDownActio')<cr>", opts)
keymap('v', '<A-Up>', "<cmd>call VSCodeNotify('editor.action.moveLinesDownActio')<cr>", opts)
keymap('v', '<A-Down>', "<cmd>call VSCodeNotify('editor.action.moveLinesDownActio')<cr>", opts)
-- xnoremap <A-j> <Cmd>call VSCodeCallVisual('editor.action.moveLinesDownAction',1)<CR>
-- Move
keymap('n', '<A-Left>', '0', opts)

keymap('n', '<A-Right>', '$', opts)
-- map  <Leader>w <Plug>(easymotion-bd-w)
keymap('n', '<leader>s', "<Plug>Lightspeed_s", { noremap = false })
keymap('n', '<leader>w', "<Plug>Lightspeed_S", { noremap = false })
keymap('v', '<leader>s', "<Plug>Lightspeed_s", { noremap = false })
keymap('v', '<leader>w', "<Plug>Lightspeed_S", { noremap = false })
keymap('v', '<space>', "<cmd>call VSCodeNotify('whichkey.show')<cr>", opts)
-- keymap('n', '<leader>l', "<Plug>Lightspeed_T", { noremap = false })
-- keymap('n', '<Space>', "<cmd>call VSCodeNotify('whichkey.show')<cr>", opts)
keymap('n', 'gd', "<cmd>call VSCodeNotify('editor.action.peekDefinition')<cr>", opts)
keymap('n', 'gt', "<cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>", opts)


keymap('n', 'fg', "<cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})><cr>", opts)

keymap('n', 'ff', "<cmd>call VSCodeNotify('workbench.action.quickOpen')<cr>", opts)
