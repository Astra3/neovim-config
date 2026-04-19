return {
    {
        'nvim-telescope/telescope.nvim',
        version = "*",
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
    },
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            delete_to_trash = true,
            lsp_file_methods = {
                autosave_changes = true,
            },
        },
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {}
    },
    {
        'jedrzejboczar/possession.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        opts = {
            autosave = {
                current = true,
                cwd = true,
            },
            autoload = "auto_cwd"
        }
    },

}
