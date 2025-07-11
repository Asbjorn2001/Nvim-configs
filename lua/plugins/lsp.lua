return {
    { "neovim/nvim-lspconfig" },
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        'nvimdev/lspsaga.nvim',
        config = function()
            vim.diagnostic.config({ virtual_text = true })
            require('lspsaga').setup({
                finder = {
                    keys = {
                        vsplit = "v"
                    }
                }
            })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        }
    },
    -- { "folke/neodev.nvim", opts = {} },
}
