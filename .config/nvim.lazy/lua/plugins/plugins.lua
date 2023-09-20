return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false, -- tag = "*",
    -- config = function()
    --   require("toggleterm").setup()
    -- end,
    opts = {
      direction = "float",
      open_mapping = [[<F7>]],
      float_opts = {
        border = "curved",
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    },
  },
  { "mini.indentscope", enabled = false },
  { "lewis6991/spaceless.nvim", opts = {}, lazy = false },
  { "dstein64/nvim-scrollview" },
  {
    "Darazaki/indent-o-matic",
    opts = {
      -- Global settings (optional, used as fallback)
      max_lines = 2048,
      standard_widths = { 2, 4, 8 },

      -- Only detect 4 spaces and tabs for Rust files
      filetype_rust = {
        standard_widths = { 4 },
      },

      filetype_perl = {
        standard_widths = { 4 },
      },

      filetype_lua = {
        standard_widths = { 2 },
      },

      -- Don't detect 8 spaces indentations inside files without a filetype
      filetype_ = {
        standard_widths = { 2, 4 },
      },
    },
    { "mfussenegger/nvim-dap" },
    {
      "rafamadriz/friendly-snippets",
      enabled = false,
    },
  },
}
