local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "cmake", "bashls", "marksman", "pylsp", "rust_analyzer", "yamlls", "jsonls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["clangd"].setup {
  on_attach = on_attach,
  capabilities = capabilities,

  cmd = {
    "clangd",
    "--clang-tidy",
    "--header-insertion-decorators",
    "--header-insertion=never",
    "--offset-encoding=utf-16",
    "--all-scopes-completion",
    "--completion-style=bundled",
  },

  single_file_support = true,
}

lspconfig["pylsp"].setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = true,
          ignore = {
            "E402",
            "E121",
            "E123",
            "E124",
            "E126",
            "E127",
            "E201",
            "E222",
            "E225",
            "E226",
            "E231",
            "E261",
            "E265",
            "E301",
            "E303",
            "W391",
            "W503",
            "W504",
          },
          count = false,
          statistics = true,
          maxLineLength = 160,
        },
      },
    },
  },
}
