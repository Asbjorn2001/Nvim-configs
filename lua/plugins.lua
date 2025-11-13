return {
    {
        'altermo/ultimate-autopair.nvim',
        event = { 'InsertEnter','CmdlineEnter' },
        branch = 'v0.6', --recommended as each new version will have breaking changes
        opts = {
            --Config goes here
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 999,
    },
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        priority = 998,
        opts = {},
    },
    { "rebelot/kanagawa.nvim" },
    { "jacoborus/tender.vim" },
    { "scottmckendry/cyberdream.nvim" },
    { "AlexvZyl/nordic.nvim" },
    { "vague-theme/vague.nvim" },
    { "rmehri01/onenord.nvim" },
    { "nordtheme/vim" },
    { "wurli/cobalt.nvim" },
    { "navarasu/onedark.nvim" },
    { "Shatur/neovim-ayu" },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        config = function()
            require('Comment').setup()
        end,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        config = function()
            require("flash").setup()
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            --vim.cmd("set statusline+=%{get(b:, 'gitsigns_status', '')}")
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        config = function()
            require("ibl").setup()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({ options = { theme = 'dracula' } })
        end
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            notify = { enabled = false },
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
        }
    },
    { "tpope/vim-surround" },
    { "mbbill/undotree" },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "ThePrimeagen/harpoon" },
    --[[ {
        "Exafunction/windsurf.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("codeium").setup({})
        end
    }, ]]
}
