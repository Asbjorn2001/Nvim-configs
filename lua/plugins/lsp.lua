return {
    {
        "mason-org/mason.nvim", 
        event = "VeryLazy",
        config = function ()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "mason-org/mason-lspconfig.nvim", 
        event = "VeryLazy",
        config = function ()
            require("mason-lspconfig").setup()
        end,
    },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { 
        'nvimdev/lspsaga.nvim',
        config = function() 
            require('lspsaga').setup() 
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        }
    },
    { "folke/neodev.nvim", opts = {} },
}
