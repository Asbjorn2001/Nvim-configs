-- tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")

-- code folding
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- other
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.o.hidden = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- LSPs
vim.lsp.enable("eslint-lsp")
vim.lsp.enable("omnisharp")
vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true
      }
    }
  }
})

