return {
    { "tpope/vim-fugitive" },
    { "williamboman/mason.nvim",           opts = {} },
    { "williamboman/mason-lspconfig.nvim", opts = {} },
    { "windwp/nvim-ts-autotag",            opts = {} },
    { "https://codeberg.org/andyg/leap.nvim",                 opts = {} },
    { 'numToStr/Comment.nvim',             opts = {} },
    { "m4xshen/autoclose.nvim",            opts = {} },
    {
        'vyfor/cord.nvim',
        build = ':Cord update',
        opts = {
            idle = {
                show_status = false,
            },
        },
    },
    {
        "okuuva/auto-save.nvim",
        opts = {
            trigger_events = {
                defer_save = {},
            },
        },
    },
    {
        'derektata/lorem.nvim',
        config = function()
            require('lorem').opts {
                sentenceLength = "medium",
                comma_chance = 0.2,
                max_commas_per_sentence = 2,
            }
        end
    },
}
