-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local nvim_lsp = require "lspconfig"
local servers = { "html", "cssls", "cssmodules_ls", "tailwindcss", "rust_analyzer", "jsonls", "purescriptls", "rome", "stylelint_lsp", "tsserver", "volar"}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

