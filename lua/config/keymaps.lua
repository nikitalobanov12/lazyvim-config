-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- File explorer with Ctrl+e (Snacks explorer)

vim.keymap.set({ "n", "i" }, "<C-e>", function()
  Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer Snacks (cwd)" })

-- File search with Ctrl+p
vim.keymap.set({ "n", "i" }, "<C-p>", function()
  Snacks.picker.files({ cwd = vim.fn.getcwd() })
end, { desc = "Find Files (cwd)" })

-- Grep/search with Ctrl+q
vim.keymap.set({ "i", "n" }, "<C-q>", function()
  Snacks.picker.grep({ cwd = vim.fn.getcwd() })
end, { desc = "Live Grep (cwd)" })

vim.keymap.set("i", "<C-F3>", "<Esc>o", { desc = "New line below" })

-- Tmux integration keymaps
vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", { desc = "Terminal horizontal split" })
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { desc = "Terminal vertical split" })
vim.keymap.set("n", "<leader>tt", ":terminal<CR>", { desc = "Terminal in current buffer" })

-- Quick tmux session management (requires tmux to be running)
vim.keymap.set("n", "<leader>ts", function()
  vim.fn.system("tmux new-session -d -s nvim-session 2>/dev/null")
  print("Created tmux session: nvim-session")
end, { desc = "Create tmux session" })

-- Toggle tmux terminal split (75/25 ratio)
vim.keymap.set("n", "<C-/>", function()
  if vim.env.TMUX then
    vim.fn.system("tmux send-keys C-` 2>/dev/null")
  else
    print("Not in a tmux session")
  end
end, { desc = "Toggle tmux terminal split" })
