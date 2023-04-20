local present, dap = pcall(require, "dap")
if not present then
  print "Couldn't find dap"
  return
end

dap.adapters.codelldb = {

  type = "server",
  host = "127.0.0.1",
  port = 13000,
  executable = {
    command = vim.fn.stdpath "data" .. "/mason/bin/codelldb",
    args = { "--port", "13000" },
  },
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    setupCommands = {
      {
        description = "enable pretty printing",
        text = "-enable-pretty-printing",
        ignoreFailures = false,
      },
    },
  },
}

-- setup other language
dap.configurations.c = dap.configurations.cpp
