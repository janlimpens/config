return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      -- thats the one with dap
      -- require("lspconfig").perlpls.setup({
      --   perlcritic = { enabled = false },
      -- })
      require("lspconfig").perlls.setup({
        perltidy = { perltidyrc = "~/.perltidyrc" },
      })
    end,
  },
  { "ssoriche/perltidy.vim" },
  { "williamboman/mason-lspconfig.nvim" }
  -- {
  --   "mfussenegger/nvim-dap",
  --   lazy = false,
  --   init = function()
  --     local dap = require("dap")
  --
  --     dap.adapters.perl = {
  --       type = "executable",
  --       command = "perl",
  --       args = {
  --         "-d",
  --       },
  --       name = "Perl debugger",
  --     }
  --
  --     dap.configurations.perl = {
  --       {
  --         name = "Debug",
  --         type = "perl",
  --         request = "launch",
  --         showLog = false,
  --         program = "${file}",
  --         cwd = "${workspaceFolder}",
  --         stopOnEntry = false,
  --         reloadModules = true,
  --         args = {
  --           -- arguments for script I am debugging}
  --         },
  --         runInTerminal = true,
  --       },
  --     }

  -- vim.keymap.set("n", "<F5>", function()
  --   require("dap").continue()
  -- end)
  --
  -- vim.keymap.set("n", "<F9>", function()
  --   require("dap").toggle_breakpoint()
  -- end)

  -- vim.keymap.set("n", "", function()
  --   require("dap").continue()
  -- end)
  -- vim.keymap.set("n", "", function()
  --   require("dap").step_over()
  -- end)
  -- vim.keymap.set("n", "", function()
  --   require("dap").step_into()
  -- end)
  -- vim.keymap.set("n", "", function()
  --   require("dap").step_out()
  -- end)
  -- vim.keymap.set("n", "b", function()
  --   require("dap").toggle_breakpoint()
  -- end)
  -- vim.keymap.set("n", "B", function()
  --   require("dap").set_breakpoint()
  -- end)
  -- vim.keymap.set("n", "lp", function()
  --   require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: " = 'x'))
  -- end)
  -- vim.keymap.set("n", "dr", function()
  --   require("dap").repl.open()
  -- end)
  -- vim.keymap.set("n", "dl", function()
  --   require("dap").run_last()
  -- end)
  -- vim.keymap.set({ "n", "v" }, "dh", function()
  --   require("dap.ui.widgets").hover()
  -- end)
  -- vim.keymap.set({ "n", "v" }, "dp", function()
  --   require("dap.ui.widgets").preview()
  -- end)
  -- vim.keymap.set("n", "df", function()
  --   local widgets = require("dap.ui.widgets")
  --   widgets.centered_float(widgets.frames)
  -- end)
  -- vim.keymap.set("n", "ds", function()
  --   local widgets = require("dap.ui.widgets")
  --   widgets.centered_float(widgets.scopes)
  -- end)
  --   end,
  --   opt = true,
  --   event = "BufReadPre",
  --   module = { "dap" },
  --   wants = { "nvim-dap-virtual-text", "nvim-dap-ui", "which-key.nvim" },
  --   requires = {
  --     "Pocco81/DAPInstall.nvim",
  --     "theHamsta/nvim-dap-virtual-text",
  --     "rcarriga/nvim-dap-ui",
  --     "nvim-telescope/telescope-dap.nvim",
  --   },
  --   config = function()
  --     require("config.dap").setup()
  --   end,
  -- },
}
