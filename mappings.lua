local M = {}

M.custom = {
  n = {
    ["<C-A>"] = { "gg0VG$", "Select all" },
    ["<Enter>"] = { "o<ESC>", "New line below" },
    ["<S-Enter>"] = { "O<ESC>", "New line above" },
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
  },

  i = {
    ["<C-A>"] = { "gg0VG$", "Select all" },
  },
}

M.debug = {
  n = {
    ["<leader>dt"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>db"] = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
    ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
    ["<leader>dC"] = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
    ["<leader>dd"] = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
    ["<leader>dg"] = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
    ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    ["<leader>do"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    ["<leader>du"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    ["<leader>dp"] = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
    ["<leader>dr"] = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    ["<leader>ds"] = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
    ["<leader>dq"] = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
    ["<leader>dU"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
  },
}

M.persistence = {
  n = {
    ["<leader>qs"] = { "<cmd>lua require'persistence'.load()<cr>", "Restore the session for the current directory" },
    ["<leader>ql"] = { "<cmd>lua require'persistence'.load({ last = true })<cr>", "Restore the last session" },
    ["<leader>qd"] = { "<cmd>lua require'persistence'.stop()<cr>", "Stop persistence" },
  }
}

M.preview = {
  n = {
    ["<leader>pd"] = { "<cmd>lua require'goto-preview'.goto_preview_definition()<cr>", "Preview definition" },
    ["<leader>pc"] = { "<cmd>lua require'goto-preview'.close_all_win()<cr>", "Close all preview windows" },
  }
}

M.outline = {
  n = {
    ["<leader>so"] = { "<cmd>SymbolsOutline<cr>", "Toggle symbols outline"}
  }
}

return M
