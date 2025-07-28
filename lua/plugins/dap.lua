return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()

            -- Change the breakpoint sign
            vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "DapBreakpoint", linehl = "", numhl = "DapBreakpoint" })
            vim.fn.sign_define("DapBreakpointCondition", { text = "🟠", texthl = "DapBreakpointCondition", linehl = "", numhl = "DapBreakpointCondition" })
            vim.fn.sign_define("DapStopped", { text = "➜", texthl = "DapStopped", linehl = "DapStoppedLine", numhl = "DapStopped" })
            vim.fn.sign_define("DapBreakpointRejected", { text = "❌", texthl = "DapBreakpointRejected", linehl = "", numhl = "DapBreakpointRejected" })

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require("nvim-dap-virtual-text").setup({})
       end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("mason").setup()
            require("mason-nvim-dap").setup({
                ensure_installed = { "codelldb", "delve", "netcoredbg" },
                automatic_setup = true,
                automatic_installation = true,
                handlers = {
                    function(config)
                        require('mason-nvim-dap').default_setup(config)
                    end
                }
            })
        end
    },
}
