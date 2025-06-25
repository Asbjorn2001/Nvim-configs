return { 
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { 
                "lua", 
                "vim",
                "fish",
                "regex",
                "markdown",
                "bash", 
                "javascript", 
                "c", 
                "rust",
            }, 
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
