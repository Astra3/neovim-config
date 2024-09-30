vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)

vim.keymap.set("n", "<C-d>", vim.diagnostic.open_float)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.keymap.set("i", "\"", "\"\"<left>")
-- vim.keymap.set("i", "'", "''<left>")
-- vim.keymap.set("i", "(", "()<left>")
-- vim.keymap.set("i", "[", "[]<left>")
-- vim.keymap.set("i", "{", "{}<left>")
-- vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")

vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>")

-- Goto buffer in position...
vim.keymap.set('n', '<A-+>', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<A-ě>', '<Cmd>BufferGoto 2<CR>')
vim.keymap.set('n', '<A-š>', '<Cmd>BufferGoto 3<CR>')
vim.keymap.set('n', '<A-č>', '<Cmd>BufferGoto 4<CR>')
vim.keymap.set('n', '<A-ř>', '<Cmd>BufferGoto 5<CR>')
vim.keymap.set('n', '<A-ž>', '<Cmd>BufferGoto 6<CR>')
vim.keymap.set('n', '<A-ý>', '<Cmd>BufferGoto 7<CR>')
vim.keymap.set('n', '<A-á>', '<Cmd>BufferGoto 8<CR>')
vim.keymap.set('n', '<A-í>', '<Cmd>BufferGoto 9<CR>')
vim.keymap.set('n', '<A-é>', '<Cmd>BufferLast<CR>')

vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>')
vim.keymap.set('n', '<A-w>', '<Cmd>BufferClose<CR>')

vim.keymap.set('n', '<F4>', '<Cmd>lua require(\"conform\").format()<CR>', opts)

vim.keymap.set({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')

