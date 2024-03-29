-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- pv

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- local custom_material = require'lualine.themes.material'

-- custom_material.normal.b.gray3 = '#161616'

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup(
                {
                    formatters_by_ft = {
                        lua = { "stylua" },
                        -- Conform will run multiple formatters sequentially
                        python = { "isort", "black" },
                        -- Use a sub-list to run only the first available formatter
                        javascript = { { "prettierd", "prettier" } },
                        twig = { "twig-cs-fixer" },
                        php = { "easy-coding-standard" },
                    },
                    format_on_save = {
                        -- I recommend these options. See :help conform.format for details.
                        lsp_fallback = true,
                        timeout_ms = 500,
                    },
                    notify_on_error = true,
                }
            )
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- use({ 
    --       "rose-pine/neovim", 
    --       as = "rose-pine",
    --       config = function()
    --       	vim.cmd('colorscheme rose-pine')
    --       end
    -- })
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        "nvim-lualine/lualine.nvim",
        config = function()
            require('lualine').setup({
                options = {
                    -- theme = custom_material
                    theme = 'material',
                },
                sections = {
                    lualine_c = {
                        {
                            'filename',
                            path = 1
                        }
                    }
                }
            })
        end
    }
    use( 
        "folke/tokyonight.nvim"
        -- as = "tokyonight",
        -- config = function()
        -- 	require("tokyonight").setup({
        -- 		style = "night",
        -- 	})
        -- 	vim.cmd('colorscheme tokyonight')
        -- end
    )

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

end)
