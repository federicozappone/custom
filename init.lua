local opt = vim.opt

opt.scrolloff=8
opt.sidescrolloff=8

-- hilight yank
vim.api.nvim_exec([[
au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}
]],false)
