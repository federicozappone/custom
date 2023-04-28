local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  {
    "max397574/better-escape.nvim",
    lazy = false,
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup()
    end,
  },

  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require("neoscroll").setup()
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    event = "BufRead",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "folke/trouble.nvim",
    after = "nvim-lspconfig",
  },

  {
    "Pocco81/AutoSave.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup()
    end,
  },

  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup()
    end,
  },

  {
    "tpope/vim-repeat",
  },

  {
    event = "BufRead",
    "numToStr/Comment.nvim",
  },

  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    lazy = false,
    "gpanders/editorconfig.nvim",
  },

  {
    event = "BufRead",
    "chrisgrieser/nvim-spider",
  },

  -- DAP

  {
    "mfussenegger/nvim-dap",
    config = function()
      require("custom.configs.debug").setup()
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    after = "nvim-dap",
    config = function()
      require("custom.configs.debug").setup_ui()
    end,
  },
}

return plugins
