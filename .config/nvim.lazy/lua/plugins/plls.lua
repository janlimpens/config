return {
  "neovim/nvim-lspconfig",
  init = function()
    require("lspconfig").perlls.setup({})
    -- require("lspconfig").perlpls.setup({})
  end,
}
