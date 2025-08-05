-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- File explorer with Ctrl+e (Neotree cwd)
vim.keymap.set(
  "n",
  "<C-e>",
  "<cmd>Neotree toggle position=right dir=./<cr>",
  { desc = " Toggle Explorer Neotree (cwd)" }
)

-- File search with Ctrl+p
vim.keymap.set("n", "<C-p>", function()
  require("snacks").picker.files()
end, { desc = "Find Files (Root Dir)" })

-- Grep/search with Ctrl+q
vim.keymap.set("n", "<C-q>", function()
  require("snacks").picker.grep()
end, { desc = "Grep (Root Dir)" })

-- Go.nvim keymaps (only active in Go files)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    local opts = { buffer = true }
    vim.keymap.set("n", "<leader>gr", "<cmd>GoRun<cr>", vim.tbl_extend("force", opts, { desc = "Go Run" }))
    vim.keymap.set("n", "<leader>gt", "<cmd>GoTest<cr>", vim.tbl_extend("force", opts, { desc = "Go Test" }))
    vim.keymap.set(
      "n",
      "<leader>gT",
      "<cmd>GoTestFunc<cr>",
      vim.tbl_extend("force", opts, { desc = "Go Test Function" })
    )
    vim.keymap.set("n", "<leader>gb", "<cmd>GoBuild<cr>", vim.tbl_extend("force", opts, { desc = "Go Build" }))
    vim.keymap.set("n", "<leader>gc", "<cmd>GoCoverage<cr>", vim.tbl_extend("force", opts, { desc = "Go Coverage" }))
  end,
})
