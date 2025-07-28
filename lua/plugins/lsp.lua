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
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "jsonls", "omnisharp", "zls",
                                 "clangd", "pyright", "ast_grep", "biome", "eslint", "gopls" }
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({
                finder = {
                    keys = {
                        vsplit = "v"
                    }
                },
                lightbulb = {
                    enable = true,
                    sign = false,
                },
            })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        }
    },
}
