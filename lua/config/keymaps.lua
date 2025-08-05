-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- File explorer with Ctrl+e (Neotree cwd)

vim.keymap.set("n", "<C-e>", function()
  Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer Snacks (cwd)" })

-- File search with Ctrl+p
vim.keymap.set("n", "<C-p>", function()
  require("fzf-lua").files()
end, { desc = "Find Files (Root Dir)" })

-- Grep/search with Ctrl+q
vim.keymap.set("n", "<C-q>", function()
  require("fzf-lua").live_grep()
end, { desc = "Grep (Root Dir)" })
