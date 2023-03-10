local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- cpp
  b.formatting.clang_format,

  -- lua
  b.formatting.stylua,

  -- python
  b.formatting.black,

  -- xml
  b.formatting.xmlformat,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
