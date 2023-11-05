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
      {
        "SmiteshP/nvim-navbuddy",
        config = function()
          require "custom.configs.navbuddy"
        end,
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  -- override plugin configs
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  {
    lazy = false,
    "benfowler/telescope-luasnip.nvim",
  },

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
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
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
    event = "BufRead",
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
    after = "nvim-lspconfig",
  },

  {
    lazy = false,
    "tpope/vim-repeat",
  },

  {
    event = "BufRead",
    "numToStr/Comment.nvim",
  },

  {
    event = "BufRead",
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
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

  -- Snippets

  {
    event = "BufRead",
    "madskjeldgaard/cheeky-snippets.nvim",
    requires = {
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cheeky = require "cheeky"
      cheeky.setup {
        langs = {
          all = true,
          lua = true,
          cpp = true,
          asm = false,
          cmake = true,
          markdown = true,
          supercollider = false,
        },
      }
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
  },

  {
    event = "BufRead",
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },

  {
    lazy = false,
    "stevearc/overseer.nvim",
    config = function()
      require("overseer").setup {
        templates = { "builtin", "user.cpp_build", "user.ros2_cmake_pkg" },
      }
    end,
    opts = {},
  },

  {
    lazy = false,
    "ldelossa/gh.nvim",
    dependencies = "ldelossa/litee.nvim",
    config = function()
      require "custom.configs.gh"
    end,
  },

  {
    event = "BufRead",
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}

return plugins
