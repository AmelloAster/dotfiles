local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
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
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)


-- Navigate buffers
keymap("n", "<C-tab>", ":bnext<cr>", opts)
keymap("n", "<A-tab>", ":bprevious<cr>", opts)

-- Line transform using 'Alt'
keymap('n', '<A-Up>', ':m .+1<cr>==', opts)
keymap('n', '<A-Down>', ':m .-2<cr>==', opts)
keymap('i', '<A-Up>', '<Esc>:m .+1<cr>==gi', opts)
keymap('i', '<A-Down>', '<Esc>:m .-2<cr>==gi', opts)
keymap('v', '<A-Up>', ":m '>+1<cr>gv=gv", opts)
keymap('v', '<A-Down>', ":m '<-2<cr>gv=gv", opts)

-- Move
keymap('n', '<A-Left>', '0', opts)
keymap('n', '<A-Right>', '$', opts)


-- Copy
keymap('n', 'yc', '"+y', opts)
keymap('v', 'yc', '"+y', opts)
keymap('n', 'tx', '"+x', opts)
keymap('v', 'tx', '"+x', opts)

-- Select All
keymap('n', '<D-a>', 'ggVG', opts)
keymap('i', '<D-a>', 'gggHG', opts)
keymap('c', '<D-a>', 'gggHG', opts)

-- Outline
keymap('n', 'op', 'SymbolsOutline', opts)


-- FileExpoler
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":NvimTreeFindFile<cr>", opts)
keymap("n", "<leader>t", ":NvimTreeFocus<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- bookmark's
keymap("n", "ma", "<cmd>Telescope vim_bookmarks current_file<cr>", opts)
keymap("n", "mA", "<cmd>Telescope vim_bookmarks all<cr>", opts)

-- git diff view
keymap('n', '<leader>j', ']c', opts)
keymap('n', '<leader>k', '[c', opts)

-- save
keymap('n', '<D-s>', '<cmd>w', opts)

-- change
keymap('n', 'cr', 'caw', opts)
