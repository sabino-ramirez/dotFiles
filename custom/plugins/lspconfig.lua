local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local util = require "lspconfig/util"

local lspconfig = require "lspconfig"
local utils = require "core.utils"

local servers = { "tsserver", "yamlls", "html" }

local my_on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true

  utils.load_mappings("lspconfig", { buffer = bufnr })
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.svelte.setup {
  on_attach = my_on_attach,
  capabilities = capabilities,

  cmd = { "svelteserver", "--stdio" },
  filetypes = { "svelte" },
  root_dir = util.root_pattern("package.json", ".git"),
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  -- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    python = {
      autosearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true,
    },
  },

  single_file_support = true,
}

lspconfig.gopls.setup {
  on_attach = my_on_attach,
  capabilities = capabilities,

  cmd = { "gopls", "serve" },
  filetypes = { "go", "gomod" },
  -- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}
