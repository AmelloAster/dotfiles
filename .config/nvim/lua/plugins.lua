local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        -- open_fn = function()
        --   return require("packer.util").float { border = "rounded" }
        -- end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
    }
    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    }
    -- use {
    --   "nvim-telescope/telescope-frecency.nvim",
    --   requires = {"tami5/sqlite.lua"}   -- NOTE: need to install sqlite lib
    -- }
    use "nvim-telescope/telescope-ui-select.nvim"
    use "nvim-telescope/telescope-live-grep-raw.nvim"
    use "MattesGroeger/vim-bookmarks"
    use "tom-anders/telescope-vim-bookmarks.nvim"
    use "nvim-telescope/telescope-dap.nvim"

    -- Treesittetr
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use {
        "nvim-treesitter/nvim-treesitter-textobjects",
    } -- enhance texetobject selection
    use "romgrk/nvim-treesitter-context" -- show class/function at the top
    -- use "m-demare/hlargs.nvim"
    -- use "SmiteshP/nvim-gps" -- statusline shows class structure
    use "andymass/vim-matchup"

    -- lsp
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "ray-x/lsp_signature.nvim" -- show function signature when typing
    use "glepnir/lspsaga.nvim"
    use "kosayoda/nvim-lightbulb" -- code action
    use "jose-elias-alvarez/nvim-lsp-ts-utils" -- ts power
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    use "lewis6991/impatient.nvim" -- Speed up loading Lua modules


    use "akinsho/toggleterm.nvim" -- toggle terminal
    use "ahmedkhalf/project.nvim" -- project manager
    use "folke/which-key.nvim" -- which  key
    use {
        "phaazon/hop.nvim", -- like easymotion, but more powerful
    }
    use "folke/todo-comments.nvim" -- todo comments
    use "nvim-lualine/lualine.nvim" -- status line
    use "goolord/alpha-nvim" -- welcome page
    use({
        'rcarriga/nvim-notify',
        config = function()
            require('notify')
            vim.notify = require('notify')
        end,
    })
    use {
        'rmagatti/auto-session',
        config = function()
            require('auto-session').setup {
                log_level = 'info',
                auto_session_suppress_dirs = { '~/', '~/Projects' }
            }
        end
    }
    -- code Auxiliary
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use({
        'numToStr/Comment.nvim'
    })
    use "github/copilot.vim" -- Copilot setup,
    use "kevinhwang91/nvim-bqf" -- better quick fix
    use "RRethy/vim-illuminate" -- highlight undercursor word
    use "simrat39/symbols-outline.nvim"
    use "folke/trouble.nvim"
    use "j-hui/fidget.nvim" -- show lsp progress
    use "sindrets/winshift.nvim" -- rerange window layout
    use "Pocco81/AutoSave.nvim"
    use "djoshea/vim-autoread"
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use({ 'windwp/nvim-ts-autotag' })
    use 'ethanholz/nvim-lastplace'


    -- cmp
    use {
        "hrsh7th/nvim-cmp",
        -- commit = "4f1358e659d51c69055ac935e618b684cf4f1429",
    } -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    -- use "quangnguyen30192/cmp-nvim-tags"
    use "jsfaint/gen_tags.vim"
    use "ray-x/cmp-treesitter"
    use "f3fora/cmp-spell" -- spell check
    use({ 'petertriho/cmp-git', requires = 'nvim-lua/plenary.nvim' })



    -- Debugger
    use "ravenxrz/DAPInstall.nvim" -- help us install several debuggers
    use {
        "ravenxrz/nvim-dap",
    }
    use "theHamsta/nvim-dap-virtual-text"
    use "rcarriga/nvim-dap-ui"

    -- Git
    use {
        "lewis6991/gitsigns.nvim",
    }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }


    -- UI
    -- Colorschemes
    use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
    -- use "martinsione/darkplus.nvim"
    -- use "navarasu/onedark.nvim"
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    use {
        "EdenEast/nightfox.nvim"
    }
    use {
        "projekt0n/github-nvim-theme",
    }
    use {
        "norcalli/nvim-colorizer.lua"
    }
    use {
        "lukas-reineke/indent-blankline.nvim"
    }
    use "kyazdani42/nvim-web-devicons" -- icons
    use "xiyaowong/nvim-transparent"

    -- expoler and tab
    use "kyazdani42/nvim-tree.lua" -- file explore
    use {
        "akinsho/bufferline.nvim", -- tab
    }

    -- use "cdelledonne/vim-cmake"
    use "ravenxrz/neovim-cmake"
    use {
        "skanehira/preview-markdown.vim",
        opt = true,
        cmd = "PreviewMarkdown",
    } -- NOTE:: glow required : https://github.com/charmbracelet/glow
    use "voldikss/vim-translator"
    use "mtdl9/vim-log-highlighting"
    use "Pocco81/HighStr.nvim"
    -- use({
    --     'projekt0n/circles.nvim',
    --     requires = { { 'kyazdani42/nvim-web-devicons' }, { 'kyazdani42/nvim-tree.lua', opt = true } },
    --     config = function()
    --         require('circles').setup({ icons = { empty = '', filled = '', lsp_prefix = '' } })
    --     end,
    -- })
    use({
        'lewis6991/spellsitter.nvim',
    })
    --test
    use "vim-test/vim-test"
    use {
        "rcarriga/vim-ultest",
        run = ":UpdateRemotePlugins"
    }
    use { 'michaelb/sniprun', run = 'bash ./install.sh' }
    use "mg979/vim-localhistory"

    -- snip
    use "Shougo/neosnippet.vim"
    use "Shougo/neosnippet-snippets"
    use "Shougo/deoplete.nvim"
    -- snippets
    use "hrsh7th/cmp-vsnip"
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- tag
    use "AndrewRadev/tagalong.vim"
    use "alvan/vim-closetag"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
