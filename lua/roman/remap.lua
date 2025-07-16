vim.keymap.set("n", "<leader>pv", vim.cmd.Oil, { desc = "Switch to File Browser" })

vim.keymap.set("n", "<C-d>", vim.diagnostic.open_float, { desc = "LSP Open Diagnostics" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste from Clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank Line to Clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from Clipboard" })
vim.keymap.set("n", "<leader>P", [["+P]], { desc = "Paste from Clipboard" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Search and Replace Word Under Cursor" })
vim.keymap.set("n", "<C-/>", ":noh<CR>", { desc = "Cancel Search Highlight" })

vim.keymap.set("n", "<A-c>", ":foldclose<CR>", { desc = "Fold Close" })

vim.keymap.set({ "n", "v" }, "j", "gj")
vim.keymap.set({ "n", "v" }, "<Down>", "gj")
vim.keymap.set({ "n", "v" }, "k", "gk")
vim.keymap.set({ "n", "v" }, "<Up>", "gk")

vim.keymap.set("n", "<leader>i", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle LSP Inlay Hints" })

vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Go To Next Buffer" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Go To Previous Buffer" })

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

vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', { desc = "Pin Buffer" })
vim.keymap.set('n', '<A-w>', '<Cmd>BufferClose<CR>', { desc = "Close Buffer" })

vim.keymap.set('n', '<F3>', '<Cmd>lua require(\"conform\").format()<CR>', { desc = "Format Current File" })

vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)', { desc = "Search Two Chars Forward" })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)', { desc = "Search Two Chars Backward" })

-- LSP remaps

vim.keymap.set({ 'n', 'i' }, '<C-q>', vim.lsp.buf.hover, { desc = "LSP Documentation" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "LSP Jump to Declaration" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "LSP Jump to Implementation" })
vim.keymap.set('n', 'go', vim.lsp.buf.type_definition,
    { desc = "LSP Jump to Type Definition (use Telescope instead!)" })
vim.keymap.set({ 'n', 'i' }, '<C-p>', vim.lsp.buf.signature_help,
    { desc = "LSP Signature Help (in parenthesis and stuff)" })
vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { desc = "LSP Rename Symbol" })
vim.keymap.set("n", "<A-CR>", vim.lsp.buf.code_action, { desc = "LSP Code Actions (quick fixes)" })
