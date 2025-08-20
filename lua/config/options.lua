-- Add local bin to PATH for fd symlink
vim.env.PATH = vim.fn.stdpath("config") .. "/bin:" .. vim.env.PATH

-- UI Settings
vim.opt.listchars = {
  tab = "  ",
  extends = "❯",
  precedes = "❮", 
  nbsp = "␣",
}

-- LSP Settings
vim.lsp.inlay_hint.enable(false)
