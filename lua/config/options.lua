-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/L{azyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Add local bin to PATH for fd symlink
vim.env.PATH = vim.fn.stdpath("config") .. "/bin:" .. vim.env.PATH

vim.opt.listchars = {
  tab = "  ",
  extends = "❯", -- Show when line extends beyond screen
  precedes = "❮", -- Show when line precedes screen
  nbsp = "␣",
}
-- Disable inlay hints
vim.lsp.inlay_hint.enable(false)

-- Disable LazyVim dashboard to show default Neovim intro
vim.g.lazyvim_dashboard = false
