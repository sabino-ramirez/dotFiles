local M = {}

M.nvimtree = {
  git = {
    enable = true,
  },

  view = {
    side = "left",
    width = 20,
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "sylua",
    "css-lsp",
    "typescript-language-server",
    "json-lsp",
  },
}

return M
