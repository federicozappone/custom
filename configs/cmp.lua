local present, cmp = pcall(require, "cmp")

if not present then
  return
end

require("base46").load_highlight "cmp"

local options = {

  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
  }
}

cmp.setup(options)
