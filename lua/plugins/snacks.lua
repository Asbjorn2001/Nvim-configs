return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        lazygit = { enabled = true },
        notifier = {
            enabled = true,
            style = "compact",
            timeout = 2500,
        },
    },
    keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit", mode = "n" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Git Log", mode = "n" },
    { "<leader>nh", function() Snacks.notifier.show_history() end, desc = "Show Notification History", mode = "n" },
    { "<leader>nd", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications", mode = "n" },
    },
    dependencies = {
        "nvim-web-devicons"
    }
}
