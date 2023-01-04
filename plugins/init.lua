return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- cpp
        "clangd",
        "clang-format",

        -- "debug"
        "codelldb",

        -- python
        "python-lsp-server",
        "black",

        -- latex
        "ltex-ls",

        -- markdown
        "marksman",

        -- bash
        "bash-language-server",
      },
    },
  },

  ["danymat/neogen"] = {
    config = function()
      require("neogen").setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["ggandor/lightspeed.nvim"] = {
    event = "BufRead",
  },

  ["folke/persistence.nvim"] = {
    event = "BufReadPre",
    module = "persistence",
    config = function()
      require("persistence").setup()
    end,
  },

  ["tpope/vim-repeat"] = {},

  ["kylechui/nvim-surround"] = {
    tag = "*",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  ["karb94/neoscroll.nvim"] = {
    event = "WinScrolled",
    config = function()
      require "custom.plugins.neoscroll"
    end,
  },

  -- LSP stuff

  ["simrat39/symbols-outline.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  ["folke/trouble.nvim"] = {
    after = "nvim-lspconfig",
  },

  ["Pocco81/AutoSave.nvim"] = {
    config = function()
      require("auto-save").setup()
    end,
  },

  ["rmagatti/goto-preview"] = {
    config = function()
      require "custom.plugins.goto-preview"
    end,
  },

  -- DAP

  ["mfussenegger/nvim-dap"] = {
    config = function()
      require("custom.plugins.debug").setup()
    end,
  },

  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = function()
      require("custom.plugins.debug").setup_ui()
    end,
  },
}
