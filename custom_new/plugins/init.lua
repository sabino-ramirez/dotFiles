local customConfigs = require "custom.plugins.configs"

return {
  -- install plugins
  ["windwp/nvim-ts-autotag"] = {},
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override core plugin definition options
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["kyazdani42/nvim-tree.lua"] = customConfigs.nvimtree,
  ["williamboman/mason.nvim"] = customConfigs.mason,

  -- override core plugin conf

  -- remove plugin
  -- ["some/plugin"] = false,
}
