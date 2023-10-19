local M = {}

local cmp = require "cmp"

M.cmp = {
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
  },
}

M.telescope = {
  config = function()
    require('telescope').load_extension('luasnip')
  end,
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "cpp",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- "debug"
    "codelldb",

    -- python
    "python-lsp-server",
    "black",

    -- xml
    "xmlformatter",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "cmake-language-server",

    -- bash
    "bash-language-server",

    -- markdown
    "marksman",

    -- rust
    "rust-analyzer",
  },
}

-- git support in nvimtree
M.nvimtree = {
  view = {
    adaptive_size = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
    debounce_delay = 50,
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.ERROR,
    },
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
