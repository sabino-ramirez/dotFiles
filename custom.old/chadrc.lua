local M = {}
local customConfigs = require "custom.plugins.configs"

M.ui = {
  theme = "nightfox",
}

M.plugins = {
  override = {
    ["kyazdani42/nvim-tree.lua"] = customConfigs.nvimtree,
  },

  user = {
    ["goolord/alpha-nvim"] = {
      disable = false,
    },
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        "lua-language-server",
        "sylua",
        "css-lsp",
        "typescript-language-server",
        "json-lsp",
      },
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },
  },
}

M.mappings = require "custom.mappings"

return M
