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

M.lspconfig = {
  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
  n = {
    -- ["<leader>ra"] = {
    --   function()
    --     require("nvchad_ui.renamer").open()
    --   end,
    --   "lsp rename",
    -- },

    ["gl"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },

    ["<leader>lw"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },

    -- ["<leader>fm"] = {
    --   function()
    --     vim.lsp.buf.format { async = true }
    --   end,
    --   "lsp formatting",
    -- },

    -- ["<leader>wa"] = {
    --   function()
    --     vim.lsp.buf.add_workspace_folder()
    --   end,
    --   "add workspace folder",
    -- },

    -- ["<leader>wr"] = {
    --   function()
    --     vim.lsp.buf.remove_workspace_folder()
    --   end,
    --   "remove workspace folder",
    -- },

    -- ["<leader>wl"] = {
    --   function()
    --     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    --   end,
    --   "list workspace folders",
    -- },
  },
}

return M
