vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldlevelstart = 20
vim.opt.foldnestmax = 4

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.g.mapleader = " "

vim.opt.autowriteall = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.lsp.inlay_hint.enable()

