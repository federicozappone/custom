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
    lazy = false,
    "olimorris/persisted.nvim",
    config = true,
  },

  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = {
      { "<leader>tt", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {},
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
    lazy = false,
    "mfussenegger/nvim-dap",
    config = function()
      require("custom.configs.debug").setup()
    end,
  },

  {
    lazy = false,
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
          cpp = false,
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
    lazy = false,
    "sindrets/diffview.nvim",
  },

  {
    event = "BufRead",
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
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

  {
    lazy = false,
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  {
    lazy = false,
    "Badhi/nvim-treesitter-cpp-tools",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    -- Optional: Configuration
    opts = function()
      local options = {
        preview = {
          quit = "q",                             -- optional keymapping for quit preview
          accept = "<tab>",                       -- optional keymapping for accept preview
        },
        header_extension = "h",                   -- optional
        source_extension = "cpp",                 -- optional
        custom_define_class_function_commands = { -- optional
          TSCppImplWrite = {
            output_handle = require("nt-cpp-tools.output_handlers").get_add_to_cpp(),
          },
        },
      }
      return options
    end,
    config = true,
  },

  {
    lazy = false,
    "RRethy/nvim-treesitter-textsubjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },

    config = function()
      require("nvim-treesitter.configs").setup {
        textsubjects = {
          enable = true,
          prev_selection = ",",
          keymaps = {
            ["."] = "textsubjects-smart",
            [";"] = "textsubjects-container-outer",
            ["i;"] = { "textsubjects-container-inner", desc = "Select inside containers (classes, functions, etc.)" },
          },
        },
      }
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    version = "2.20.7",
    opts = overrides.blankline,
  },

  {
    lazy = false,
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        view_options = {
          show_hidden = true,
        },
      }
    end,
  },
}

return plugins
