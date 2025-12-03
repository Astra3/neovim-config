return {
    { "neovim/nvim-lspconfig" },
    {
        'mrcjkb/rustaceanvim',
        version = '^6', -- Recommended
        lazy = false,   -- This plugin is already lazy
    },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                python = { "ruff" },
                c = { "clang-format" },
                cpp = { "clang-format" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                html = { "prettierd", "prettier", stop_after_first = true },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                typescript = { "prettierd", "prettier", stop_after_first = true },
                svelte = { "prettierd", "prettier", stop_after_first = true },
                typst = { "typstyle" },
                ["_"] = {},
            },
            default_format_opts = {
                lsp_format = "fallback",
            },
        }
    },
    { "mfussenegger/nvim-lint" },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
        },
    },
    { "Bilal2453/luvit-meta",       lazy = true }, -- optional `vim.uv` typings
    {                                              -- optional completion source for require statements and module annotations
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            opts.sources = opts.sources or {}
            table.insert(opts.sources, {
                name = "lazydev",
                group_index = 0, -- set group index to 0 to skip loading LuaLS completions
            })
        end,
        dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "petertriho/cmp-git", "hrsh7th/cmp-path" }
    },
    { "p00f/clangd_extensions.nvim" },
    { "mfussenegger/nvim-dap" },
    { "rcarriga/nvim-dap-ui",       dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }, opts = {} },
    {
        "chomosuke/typst-preview.nvim",
        opts = {
            dependencies_bin = {
                ['tinymist'] = "/usr/bin/tinymist",
                ['websocat'] = "/usr/bin/websocat",
            }
        },
        ft = "typst",
    }
}
