local wk = require('which-key')

-- Disable arrows
vim.cmd("map <up> <nop>")
vim.cmd("map <down> <nop>")
vim.cmd("map <left> <nop>")
vim.cmd("map <right> <nop>")

-- Paste without overriding clipboard
vim.keymap.set("v", "<leader>p", '"_dP', { noremap = true, silent = true })

-- ToggleTerm Key Mappings
vim.keymap.set('i', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm size=70 direction=vertical"<CR>')
vim.keymap.set('n', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm size=70 direction=vertical"<CR>')

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- File keymappings
wk.add({
    { "<leader>f", group = "File" },
    { "<leader>fe", "<cmd>NvimTreeToggle<cr>", desc = "File Explorer", mode = "n" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers", mode = "n" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },
})

-- Git keymappings
local gitsigns = require("gitsigns")
wk.add({
    { "<leader>g", group = "Git" },
    { "<leader>gc", "<cmd>Neogit kind=vsplit<cr>", desc = "Commit", mode = "n" },
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview", mode = "n" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close Diffview", mode = "n" },
    { "<leader>gs", function() gitsigns.stage_hunk() end, desc = "Stage Hunk", mode = "n" },
    { "<leader>gu", function() gitsigns.undo_stage_hunk() end, desc = "Unstage Hunk", mode = "n" },
    { "<leader>gr", function() gitsigns.reset_hunk() end, desc = "Reset Hunk", mode = "n" },
    { "<leader>gp", function() gitsigns.preview_hunk() end, desc = "Preview Hunk", mode = "n" },
    { "<leader>gb", function() gitsigns.blame_line() end, desc = "Blame Line", mode = "n" },
    --{ "<leader>gd", function() gitsigns.diffthis('~1') end, desc = "Diff This", mode = "n" },
    { "<leader>gn", function() gitsigns.next_hunk() end, desc = "Next Hunk", mode = "n" },
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

-- Code keymappings
local flash = require("flash")
wk.add({
    { "<leader>c", group = "Code" },
    { "<leader>ca", "<cmd>Lspsaga code_action<cr>", desc = "Code Action", mode = "n" },
    { "<leader>co", "<cmd>Lspsaga outline<cr>", desc = "Outline", mode = "n" },
    { "<leader>cr", "<cmd>Lspsaga rename<cr>", desc = "Rename", mode = "n" },
    { "<leader>cp", "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition", mode = "n" },
    { "<leader>cf", "<cmd>Lspsaga finder<cr>", desc = "Finder", mode = "n" },
    { "<leader>ch", "<cmd>Lspsaga signature_help<cr>", desc = "Signature Help", mode = "n" },
    { "<leader>cd", group = "Diagnostics" },
    { "<leader>cdw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "Show Workspace Diagnostics", mode = "n" },
    { "<leader>cdb", "<cmd>Lspsaga show_buf_diagnostics<cr>", desc = "Show Buffer Diagnostics", mode = "n" },
    { "<leader>cdl", "<cmd>Lspsaga show_line_diagnostics<cr>", desc = "Show Line Diagnostics", mode = "n" },
    { "<leader>cdn", "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "Jump to the next diagnostic", mode = "n" },
    { "<leader>cdp", "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "Jump to the previous diagnostic", mode = "n" },
    { "<leader>cb", group = "Code Block" },
    { "<leader>cbs", "<cmd>TSJSplit<cr>", desc = "Split", mode = "n" },
    { "<leader>cbj", "<cmd>TSJJoin<cr>", desc = "Join", mode = "n" },
    { "<leader>cbt", "<cmd>TSJToggle<cr>", desc = "Toggle Split/Join", mode = "n" },
    { "<leader>cbv", function() flash.treesitter() end, desc = "Visual", mode = "n" },
    { "<leader>cbV", function() flash.treesitter_search() end, desc = "Visual Search", mode = "n" },
})

-- Bufferline keymappings
wk.add({
    { "<leader>b", group = "Bufferline" },
    { "<leader>bo", "<cmd>BufferLinePick<cr>", desc = "Open Buffer", mode = "n" },
    { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "Close Buffer", mode = "n" },
    { "<leader>br", "<cmd>BufferLineCloseOthers<cr>", desc = "Close Others", mode = "n" },
})

-- Other keymappings
wk.add({
    { "<leader>j", function() flash.jump() end, desc = "Jump Search", mode = "n" },
    { "<leader>n", group = "Notifications" },
    { "<leader>u", function() vim.cmd.UndotreeToggle() end, desc = "Undo Tree", mode = "n" },
    { "K", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Documentation", mode = "n" },
})


