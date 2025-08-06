-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Auto-reload files when changed externally
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  pattern = "*",
  command = "checktime",
})
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime",
})
