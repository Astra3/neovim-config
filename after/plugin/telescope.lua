local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-k>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>gr', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>cm', builtin.commands, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<S-a>', builtin.lsp_document_symbols, { desc = 'Telescope LSP symbol search' })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Telescope LSP references' })
vim.keymap.set('n', '<F4>', builtin.lsp_definitions, { desc = 'Telescope LSP definitions' })

