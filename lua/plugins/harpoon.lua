return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
    })

    -- Harpoon a file with Ctrl+h (with visual feedback)
    vim.keymap.set("n", "<C-h>", function()
      harpoon:list():add()
      local filename = vim.fn.expand("%:t")
      if filename == "" then
        vim.notify("empty file", vim.log.levels.INFO)
      end
      local list = harpoon:list()
      local slot = list:length()
      vim.notify("📌 Harpooned: " .. filename .. " [slot " .. slot .. "]", vim.log.levels.INFO)
    end, { desc = "Harpoon add file" })

    -- Toggle quick menu
    vim.keymap.set("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon quick menu" })

    -- Remove current file from harpoon list
    vim.keymap.set("n", "<leader>hr", function()
      local current_file = vim.fn.expand("%:p")
      local list = harpoon:list()
      for i = 1, list:length() do
        local item = list:get(i)
        if item and item.value == current_file then
          list:remove(item)
          local filename = vim.fn.expand("%:t")
          if filename == "" then
            filename = "[No Name]"
          end
          vim.notify("🗑️ Removed from harpoon: " .. filename, vim.log.levels.INFO)
          return
        end
      end
      vim.notify("File not found in harpoon list", vim.log.levels.WARN)
    end, { desc = "Remove current file from harpoon" })

    -- Switch to harpooned files with leader+1, leader+2, etc.
    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon to file 1" })

    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon to file 2" })

    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon to file 3" })

    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon to file 4" })

    vim.keymap.set("n", "<leader>5", function()
      harpoon:list():select(5)
    end, { desc = "Harpoon to file 5" })

    -- Navigate through harpoon list
    vim.keymap.set("n", "<C-S-P>", function()
      harpoon:list():prev()
    end, { desc = "Harpoon previous" })

    vim.keymap.set("n", "<C-S-N>", function()
      harpoon:list():next()
    end, { desc = "Harpoon next" })
  end,
}
