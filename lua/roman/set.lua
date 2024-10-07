vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.g.mapleader = " "

vim.opt.autowriteall = true

vim.opt.splitright = true
vim.opt.splitbelow = true

local function clear_cmdarea()
    vim.defer_fn(function()
        vim.api.nvim_echo({}, false, {})
    end, 800)
end

