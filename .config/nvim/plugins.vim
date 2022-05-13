if has("nvim")
  let g:plug_home = stdpath('data') . 'plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc-highlight'
Plug 'asvetliakov/vim-easymotion'
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple vim-multiple-cursors
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'github/copilot.vim'
Plug 'mattn/emmet-vim'
Plug 'ranger/ranger'
Plug 'sheerun/vim-polyglot'
Plug 'rcarriga/nvim-notify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-clap'
Plug 'rafamadriz/friendly-snippets'
Plug 'dyng/ctrlsf.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-repeat'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/vim-easy-align'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug '907th/vim-auto-save'
Plug 'mhinz/vim-startify'
Plug 'yuttie/comfortable-motion.vim'

if has("nvim")
  Plug 'projekt0n/github-nvim-theme'
  Plug 'folke/which-key.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
  Plug 'nvim-lua/completion-nvim',
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'glepnir/dashboard-nvim'
  Plug 'nvim-lua/lsp_extensions.nvim'
  Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
  Plug 'akinsho/toggleterm.nvim'
  Plug 'famiu/bufdelete.nvim'
  Plug 'kevinhwang91/rnvimr', { 'do': 'make sync' }
  Plug 'iamcco/markdown-preview.nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'phaazon/hop.nvim'
  Plug 'folke/trouble.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'EdenEast/nightfox.nvim'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'gelguy/wilder.nvim'
  Plug 'fedepujol/move.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

endif

call plug#end()
