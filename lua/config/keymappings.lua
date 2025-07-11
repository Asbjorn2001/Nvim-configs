local wk = require('which-key')

-- Disable arrows
vim.cmd("map <up> <nop>")
vim.cmd("map <down> <nop>")
vim.cmd("map <left> <nop>")
vim.cmd("map <right> <nop>")

-- Disable default LSP
vim.keymap.del("n", "gra")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")

-- Handy keymappings
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- File keymappings
wk.add({
    { "<leader>f", group = "File Navigation" },
    { "<leader>fe", "<cmd>NvimTreeToggle<cr>", desc = "File Explorer", mode = "n" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files", mode = "n" },
    { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Live Search", mode = "n" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Git Files", mode = "n" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers", mode = "n" },
    { "<leader>fh", "<cmd>Telescope harpoon marks<cr>", desc = "Find Harpoon File", mode = "n" }
    -- { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Harpoon keymappings
wk.add({
    { "<leader>a", function() mark.add_file() end, desc = "Harpoon Add File", mode = "n" },
    { "<C-h>", function() ui.toggle_quick_menu() end, desc = "Harpoon Menu", mode = "n" },
    { "<C-n>", function() ui.nav_next() end, desc = "Harpoon Next", mode = "n" },
    { "<C-p", function() ui.nav_prev() end, desc = "Harpoon Prev", mode = "n" },
    { "<C-1>", function() ui.nav_file(1) end, desc = "Harpoon File 1", mode = "n" },
    { "<C-2>", function() ui.nav_file(2) end, desc = "Harpoon File 2", mode = "n" },
    { "<C-3>", function() ui.nav_file(3) end, desc = "Harpoon File 3", mode = "n" },
    { "<C-4>", function() ui.nav_file(4) end, desc = "Harpoon File 4", mode = "n" },
    { "<C-5>", function() ui.nav_file(5) end, desc = "Harpoon File 5", mode = "n" },
})

-- Git keymappings
local gitsigns = require("gitsigns")
wk.add({
    { "<leader>g", group = "Git" },
    { "<leader>gc", "<cmd>Neogit kind=vsplit<cr>", desc = "Commit", mode = "n" },
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview", mode = "n" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close Diffview", mode = "n" },
    { "<leader>gb", function() gitsigns.blame_line() end, desc = "Blame Line", mode = "n" },
    --[[ { "<leader>gs", function() gitsigns.stage_hunk() end, desc = "Stage Hunk", mode = "n" },
    { "<leader>gu", function() gitsigns.undo_stage_hunk() end, desc = "Unstage Hunk", mode = "n" },
    { "<leader>gr", function() gitsigns.reset_hunk() end, desc = "Reset Hunk", mode = "n" },
    { "<leader>gp", function() gitsigns.preview_hunk() end, desc = "Preview Hunk", mode = "n" },
    --{ "<leader>gd", function() gitsigns.diffthis('~1') end, desc = "Diff This", mode = "n" },
    { "<leader>gn", function() gitsigns.next_hunk() end, desc = "Next Hunk", mode = "n" }, ]]
})

-- spectre keymappings
local spectre = require("spectre")
wk.add({
    { "<leader>s", group = "Search And Replace" },
    { "<leader>ss", function() spectre.toggle() end, desc = "Toggle Search", mode = "n" },
    { "<leader>sw", function() spectre.open_visual({ select_word = true }) end, desc = "Search current word", mode = "v" },
    { "<leader>sw", function() spectre.open_visual() end, desc = "Search current word", mode = "n" },
    { "<leader>sf", function() spectre.open_file_search({ select_word = true }) end, desc = "Search on current file", mode = "n" },
})

-- Code and LSP keymappings
local flash = require("flash")
wk.add({
    { "<leader>r", "<cmd>Lspsaga rename<cr>", desc = "Rename", mode = "n" },
    { "<leader>c", group = "Code" },
    { "<leader>ca", "<cmd>Lspsaga code_action<cr>", desc = "Code Action", mode = "n" },
    { "<leader>co", "<cmd>Lspsaga outline<cr>", desc = "Code Outline", mode = "n" },
    { "<leader>cs", "<cmd>TSJSplit<cr>", desc = "Split Block", mode = "n" },
    { "<leader>cj", "<cmd>TSJJoin<cr>", desc = "Join Block", mode = "n" },
    { "<leader>ct", "<cmd>TSJToggle<cr>", desc = "Split/Join Toggle", mode = "n" },
    { "<leader>cv", function() flash.treesitter() end, desc = "Visual", mode = "n" },
    { "<leader>cV", function() flash.treesitter_search() end, desc = "Visual Search", mode = "n" },
})

-- Goto keymappings
wk.add({
    { "gd", "<cmd>Lspsaga goto_definition<cr>", desc = "Goto Definition", mode = "n" },
    { "gr", "<cmd>Lspsaga finder<cr>", desc = "Goto References", mode = "n" },
})

-- Diagnostics
wk.add({
    { "<leader>d", group = "Diagnostics" },
    { "<leader>dw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "Show Workspace Diagnostics", mode = "n" },
    { "<leader>df", "<cmd>Lspsaga show_buf_diagnostics<cr>", desc = "Show Buffer Diagnostics", mode = "n" },
    { "<leader>dl", "<cmd>Lspsaga show_line_diagnostics<cr>", desc = "Show Line Diagnostics", mode = "n" },
    { "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "Jump to the next diagnostic", mode = "n" },
    { "<leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "Jump to the previous diagnostic", mode = "n" },
})

-- Other keymappings
wk.add({
    { "<leader>p", '"_dP', desc = "Super Paste", mode = "v", hidden = true }, -- Paste without overriding clipboard
    { "<leader>y", '"+y', desc = "Yank to Clipboard", mode = { "n", "v" }, hidden = true },
    { "<leader>Y", '"+Y', desc = "Yank Line to Clipboard", mode = "n", hidden = true },
    { "<leader>t", "<cmd>Lspsaga term_toggle<cr>", desc = "Terminal", mode = "n" },
    { "<leader>j", function() flash.jump() end, desc = "Jump Search", mode = "n" },
    { "<leader>n", group = "Notifications" },
    { "<leader>u", function() vim.cmd.UndotreeToggle() end, desc = "Undo Tree", mode = "n" },
    { "K", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Documentation", mode = "n" },
})


