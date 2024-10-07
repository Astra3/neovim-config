return {
    { "tpope/vim-fugitive" },
    { "williamboman/mason.nvim", opts = {} },
    { "williamboman/mason-lspconfig.nvim", opts = {} },
    { "windwp/nvim-ts-autotag", opts = {} },
    { "ggandor/leap.nvim", opts = {} },
    { 'numToStr/Comment.nvim', opts = {} },
    { "m4xshen/autoclose.nvim", opts = {} },
    {
      'vyfor/cord.nvim',
      build = './build || .\\build',
      event = 'VeryLazy',
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
}
