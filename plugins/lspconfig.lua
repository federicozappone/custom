-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local servers = { "clangd", "pylsp", "ltex", "marksman", "bashls" }

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
    "--offset-encoding=utf-16",
    "--header-insertion=never",
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
            "E231",
            "E265",
            "E201",
            "E226",
            "E222",
            "W391",
            "E261",
            "E303",
            "E121",
            "E123",
            "E124",
            "E127",
            "E126",
            "E301",
            "E225",
          },
          count = false,
          statistics = true,
          maxLineLength = 160,
        },
      },
    },
  },
}
