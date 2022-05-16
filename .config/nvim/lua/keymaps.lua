local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)


-- Navigate buffers
keymap("n", "<C-tab>", ":bnext<CR>", opts)
keymap("n", "<A-tab>", ":bprevious<CR>", opts)

-- Line transform using 'Alt'
keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)
keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Move
keymap('n', '<A-Left>', '0', opts)
keymap('n', '<A-Right>', '$', opts)


-- Copy
keymap('n', 'yc', '"+y', opts)
keymap('v', 'yc', '"+y', opts)


-- Select All
keymap('n', '<Cmd-a>', 'gggH<C-O>G', opts)
keymap('i', '<Cmd-a>', '<C-O>gg<C-O>gH<C-O>G', opts)
keymap('c', '<Cmd-a>', '<C-C>gggH<C-O>G', opts)

-- Outline
keymap('n', 'op', 'SymbolsOutline', opts)
