local servers = { "clangd", "pyright", "ruff", "tinymist", "svelte", "html", "cssls", "cmake", "lua_ls", "jsonls",
    "glsl_analyzer", "ts_ls", "asm_lsp" }

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.lsp.config("ts_ls", {
    single_file_support = true,
})

vim.lsp.config("tinymist", {
    single_file_support = true,
})

for _, server in ipairs(servers) do
    vim.lsp.enable(server)
end

