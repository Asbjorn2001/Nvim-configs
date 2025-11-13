require("vim-options")
require("config.lazy")
require("config.keymappings")

-- set colorscheme
vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#997777", bg = "NONE", italic = true }) -- color of inline hints
vim.api.nvim_set_hl(0, "DapStopped", { bg = "", fg = "#38A64E", })
vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = "#243628", fg = "", })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#4A4A4A" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#C28330" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#4A4A4A" })
