local M = {}

function M.setup()
  local dap = require("dap")
  dap.configurations.perl = {
    {
      type = "executable",
      request = "launch",
      name = "debug perl via Perl::LanguageServer",
      command = "node",
      args = { "/path to debugger /out/dbgforward.js" },
    },
  }
end

return M
