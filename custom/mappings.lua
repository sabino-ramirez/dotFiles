local M = {}

M.general = {
  -- save
  n = {
    ["<leader>w"] = { "<cmd> w <CR>", "save file" },
    ["<leader>q"] = { "<cmd> q <CR>", "exit" },
    ["<leader>wq"] = { "<cmd> wq <CR>", "save file and exit" },
  },
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<C-n>"] = { "<cmd> Telescope <CR>", "open telescope" },
  },
}

return M
