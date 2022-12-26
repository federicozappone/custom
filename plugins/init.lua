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
        "pyright",
        "black",
      },
    },
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
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
