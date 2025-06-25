local wk = require('which-key')

-- ToggleTerm Key Mappings
vim.keymap.set('i', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm size=70 direction=vertical"<CR>')
vim.keymap.set('n', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm size=70 direction=vertical"<CR>')

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Telescope keymappings
wk.add({
    { "<leader>f", group = "File" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers", mode = "n" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },
})

-- Git keymappings
local gitsigns = require("gitsigns")
wk.add({
    { "<leader>g", group = "git" },
    { "<leader>gc", "<cmd>Neogit kind=vsplit<cr>", desc = "Commit", mode = "n" },
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview", mode = "n" },
    { "<leader>gf", "<cmd>DiffviewClose<cr>", desc = "Close Diffview", mode = "n" },
    { "<leader>gs", function() gitsigns.stage_hunk() end, desc = "Stage Hunk", mode = "n" },
    { "<leader>gu", function() gitsigns.undo_stage_hunk() end, desc = "Unstage Hunk", mode = "n" },
    { "<leader>gr", function() gitsigns.reset_hunk() end, desc = "Reset Hunk", mode = "n" },
    { "<leader>gp", function() gitsigns.preview_hunk() end, desc = "Preview Hunk", mode = "n" },
    { "<leader>gb", function() gitsigns.blame_line() end, desc = "Blame Line", mode = "n" },
    --{ "<leader>gf", function() gitsigns.diffthis('~1') end, desc = "Diff This", mode = "n" },
    { "<leader>gn", function() gitsigns.next_hunk() end, desc = "Next Hunk", mode = "n" },
})

-- Flash keymappings
local flash = require("flash")
wk.add({
    { "<leader>z", group = "Flash" },
    { "<leader>zs", function() flash.jump() end, desc = "Jump", mode = "n" },
    { "<leader>zt", function() flash.treesitter() end, desc = "Treesitter", mode = "n" },
    { "<leader>zr", function() flash.treesitter_search() end, desc = "Treesitter Search", mode = "n" },
})

-- Chat GPT keymappings
-- wk.add({
--     { "<leader>u", group = "Chat GPT Visual" },
--     { "<leader>ug", },
-- })

-- spectre keymappings
local spectre = require("spectre")
wk.add({
    { "<leader>s", group = "Search And Replace" },
    { "<leader>ss", function() spectre.toggle() end, desc = "Toggle Search", mode = "n" },
    { "<leader>sw", function() spectre.open_visual({ select_word = true }) end, desc = "Search current word", mode = "v" },
    { "<leader>sw", function() spectre.open_visual() end, desc = "Search current word", mode = "n" },
    { "<leader>sf", function() spectre.open_file_search({ select_word = true }) end, desc = "Search on current file", mode = "n" },
})

-- Lspsaga keymappings
wk.add({
    { "<leader>l", group = "Lsp" },
    { "<leader>lc", "<cmd>Lspsaga code_action<cr>", desc = "Code Action", mode = "n" },
    { "<leader>lo", "<cmd>Lspsaga outline<cr>", desc = "Outline", mode = "n" },
    { "<leader>lr", "<cmd>Lspsaga rename<cr>", desc = "Rename", mode = "n" },
    { "<leader>ld", "<cmd>Lspsaga goto_definition<cr>", desc = "Go To Definition", mode = "n" },
    { "<leader>lf", "<cmd>Lspsaga finder<cr>", desc = "Lsp Finder", mode = "n" },
    { "<leader>lp", "<cmd>Lspsaga preview_definition<cr>", desc = "Preview Definition", mode = "n" },
    { "<leader>ls", "<cmd>Lspsaga signature_help<cr>", desc = "Signature Help", mode = "n" },
    { "<leader>lw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "Show Workspace Diagnostics", mode = "n" },
})

-- Bufferline keymappings
wk.add({
    { "<leader>b", group = "Bufferline" },
    { "<leader>bp", "<cmd>BufferLinePick<cr>", desc = "Pick", mode = "n" },
    { "<leader>bx", "<cmd>BufferLineCloseOthers<cr>", desc = "Close Others", mode = "n" },
})

-- TreeJS keymappings
wk.add({
    { "<leader>c", group = "Code Block Action" },
    { "<leader>cs", "<cmd>TSJSplit<cr>", desc = "Split Code Block", mode = "n" },
    { "<leader>cj", "<cmd>TSJJoin<cr>", desc = "Join Code Block", mode = "n" },
    { "<leader>ct", "<cmd>TSJToggle<cr>", desc = "Toggle Code Block", mode = "n" },
})

-- Other keymappings
wk.add({
    { "<leader>t", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer", mode = "n" },
    { "<leader>u", function() vim.cmd.UndotreeToggle() end, desc = "Toggle Undo Tree", mode = "n" },
    { "K", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Documentation", mode = "n" },
})


