-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/L{azyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.listchars = {
  tab = "  ",
  extends = "❯", -- Show when line extends beyond screen
  precedes = "❮", -- Show when line precedes screen
  nbsp = "␣",
}
-- Disable inlay hints
vim.lsp.inlay_hint.enable(false)
