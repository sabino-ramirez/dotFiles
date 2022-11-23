-- require("null-ls").setup({
--     sources = {
--         require("null-ls").builtins.formatting.prettier,
--         require("null-ls").builtins.formatting.black.with {extra_args = {"--fast"}},
--         require("null-ls").builtins.diagnostics.stylua,
--     },
-- })

local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- typescript
  b.formatting.prettier,

  -- python
  b.formatting.black,
  -- b.formatting.autopep8,

  -- Lua
  b.formatting.stylua,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
