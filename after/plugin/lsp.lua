local lsp_zero = require('lsp-zero')

-- lsp_attach is where you enable features that only work
-- if there is a language server active in the file
local lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr, desc = "" }

    opts.desc = "LSP Documentation"
    vim.keymap.set({ 'n', 'i' }, '<C-q>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    opts.desc = "LSP Jump to Declaration"
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    opts.desc = "LSP Jump to Implementation"
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    opts.desc = "LSP Jump to Type Definition"
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    opts.desc = "LSP Signature Help"
    vim.keymap.set({ 'n', 'i' }, '<C-p>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    opts.desc = "LSP Rename Symbol"
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    opts.desc = "LSP Code Actions"
    vim.keymap.set("n", "<A-CR>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
end

lsp_zero.extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    offset_encoding = "utf-8",
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

local nvim_lsp = require("lspconfig")
nvim_lsp.ts_ls.setup {
    root_dir = nvim_lsp.util.root_pattern("package.json"),
    single_file_support = false,
}

nvim_lsp.tinymist.setup {
    single_file_support = true,
}

lsp_zero.setup_servers({ "clangd", "pyright", "ruff", "tinymist", "svelte", "html", "cssls", "cmake", "lua_ls", "jsonls",
    "glsl_analyzer", "ts_ls" })
