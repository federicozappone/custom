local M = {}

M.custom = {

  n = {
     ["<C-A>"] = {"gg0VG$", "Select all"},
     ["<Enter>"] = {"o<ESC>", "New line below"},
     ["<S-Enter>"] = {"O<ESC>", "New line above"},
  },

  i = {
     ["<C-A>"] = {"gg0VG$", "Select all"}
  },
}

return M
