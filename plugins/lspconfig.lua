-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "pyright", "ltex-ls", "bash-language-server" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig['clangd'].setup{
    on_attach = on_attach,
    capabilities = capabilities,

    cmd = {"clangd",
        -- "--header-insertion=iwyu",
        "--header-insertion-decorators",
        "--offset-encoding=utf-16",
        "--header-insertion=never",
        "--all-scopes-completion",
        "--completion-style=bundled",
    },
}

