---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>a"] = { "gg0VG$", "Select all" },
    ["<Enter>"] = { "o<ESC>", "New line below" },
    ["<S-Enter>"] = { "O<ESC>", "New line above" },
    ["<C-s>"] = { "<cmd>wa<CR>", "Save file" },
    ["<C-right>"] = { "<c-w>>", "Change window size" },
    ["<C-left>"] = { "<c-w><", "Change window size" },
    ["<C-up>"] = { "<c-w>+", "Change window size" },
    ["<C-down>"] = { "<c-w>-", "Change window size" },
    ["<leader>e"] = { "<c-w>=", "Equalize splits size" },
    ["H"] = { "^", "Move to head of line" },
    ["L"] = { "$", "Move to end of line" },
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-k>"] = { "<C-w>k", "Window up" },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["gg"] = { "gg0", "Move to the beginning of the buffer" },
    ["G"] = { "G$", "Move to the end of the buffer" },
    ["<leader>v"] = { "<cmd>vsp<cr>", "Vertical split" },
    ["<C-u>"] = { "<C-y>", "Scroll up" },
    ["<C-d>"] = { "<C-e>", "Scroll down" },
    ["<leader>de"] = { "v$hd", "Delete from cursor till end" },
  },

  v = {
    ["H"] = { "^", "Move to head of line" },
    ["L"] = { "$", "Move to end of line" },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "Escape insert mode", opts = { nowait = true } },
    ["jj"] = { "<ESC>", "Escape insert mode", opts = { nowait = true } },
    ["<C-a>"] = { "<ESC>^i", "Beginning of the line" },
    ["<C-e>"] = { "<End>", "End of line" },
  },
}

M.git = {
  n = {
    ["<leader>gr"] = { "<cmd>Gitsigns reset_hunk<cr>", "Reset hunk" },
    ["<leader>gg"] = { "<cmd>Gitsigns next_hunk<cr>", "Next hunk" },
    ["<leader>gp"] = { "<cmd>Gitsigns preview_hunk_inline<cr>", "Preview hunk" },
    ["<leader>gt"] = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle current line blame" },
    ["<leader>gs"] = { "<cmd>Telescope git_status<cr>", "Git status" },
    ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    ["<leader>gf"] = { "<cmd>Telescope git_bcommits<cr>", "Git commits parent" },
    ["<leader>gd"] = { "<cmd>DiffviewOpen<cr>", "Git head diff" },
    ["<leader>gx"] = { "<cmd>DiffviewClose<cr>", "Close Diff View" },
  },
}

M.neogen = {
  n = {
    ["<leader>ng"] = { "<cmd>lua require'neogen'.generate()<cr>", "Generate documentation" },
  },
}

M.telescope = {
  n = {
    -- ["<C-n>"] = { "<cmd>Telescope file_browser<cr>", "File browser" },
    ["<leader>fg"] = { "<cmd>Telescope git_files<cr>", "Git files" },
    ["<leader>fq"] = { "<cmd>Telescope persisted<cr>", "Persisted" },
    ["<leader>fs"] = { "<cmd>Telescope luasnip<cr>", "Snippets" },
    ["<leader>fh"] = { "<cmd>Telescope file_browser path=~<cr>", "File browser in home" },
    ["<leader>fb"] = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", "File browser" },
    ["<leader>fr"] = { "<cmd>Telescope lsp_references<cr>", "LSP references" },
    ["<leader>fn"] = { "<cmd>Telescope marks<cr>", "Marks" },
  },
}

M.spider = {
  n = {
    ["w"] = { "<cmd> lua require'spider'.motion('w')<cr>", "Spider-w" },
    ["e"] = { "<cmd> lua require'spider'.motion('e')<cr>", "Spider-e" },
    ["b"] = { "<cmd> lua require'spider'.motion('b')<cr>", "Spider-b" },
    ["ge"] = { "<cmd> lua require'spider'.motion('ge')<cr>", "Spider-ge" },
  },

  o = {
    ["w"] = { "<cmd> lua require'spider'.motion('w')<cr>", "Spider-w" },
    ["e"] = { "<cmd> lua require'spider'.motion('e')<cr>", "Spider-e" },
    ["b"] = { "<cmd> lua require'spider'.motion('b')<cr>", "Spider-b" },
    ["ge"] = { "<cmd> lua require'spider'.motion('ge')<cr>", "Spider-ge" },
  },

  x = {
    ["w"] = { "<cmd> lua require'spider'.motion('w')<cr>", "Spider-w" },
    ["e"] = { "<cmd> lua require'spider'.motion('e')<cr>", "Spider-e" },
    ["b"] = { "<cmd> lua require'spider'.motion('b')<cr>", "Spider-b" },
    ["ge"] = { "<cmd> lua require'spider'.motion('ge')<cr>", "Spider-ge" },
  },
}

M.moveline = {
  n = {
    ["M-k"] = { "<cmd> lua require'moveline'.up<cr>", "Moveline-up"},
    ["M-j"] = { "<cmd> lua require'moveline'.down<cr>", "Moveline-up"},
  },
  v = {
    ["M-k"] = { "<cmd> lua require'moveline'.block_up<cr>", "Moveline-up"},
    ["M-j"] = { "<cmd> lua require'moveline'.block_down<cr>", "Moveline-up"},
  }
}

M.persisted = {
  n = {
    ["<leader>qs"] = { "<cmd>SessionLoadLast<cr>", "Restore the session for the current directory" },
  },
}

M.preview = {
  n = {
    ["<leader>pd"] = { "<cmd>lua require'goto-preview'.goto_preview_definition()<cr>", "Preview definition" },
    ["<leader>pr"] = { "<cmd>lua require'goto-preview'.goto_preview_references()<cr>", "Preview references" },
    ["<leader>pc"] = { "<cmd>lua require'goto-preview'.close_all_win()<cr>", "Close all preview windows" },
  },
}

M.outline = {
  n = {
    ["<leader>so"] = { "<cmd>Outline<cr>", "Toggle Outline" },
  },
}

M.navbuddy = {
  n = {
    ["<leader>nb"] = { "<cmd>Navbuddy<cr>", "Toggle Navbuddy" },
  },
}

M.cpp = {
  n = {
    ["<leader>cd"] = { "<cmd>TSCppDefineClassFunc<cr>", "Define Class Functions" },
    ["<leader>cc"] = { "<cmd>TSCppMakeConcreteClass<cr>", "Make Concrete Class" },
    ["<leader>cs"] = { "<cmd>ClangdSwitchSourceHeader<cr>", "Switch source header" },
  },
}

M.lspconfig = {
  n = {
    ["gh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
    ["<leader>qf"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP quickfix",
    },
    ["<leader>lr"] = {"<cmd>LspRestart<cr>", "Restart LSP"}
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

return M
