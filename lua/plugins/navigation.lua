-- Navigation and file management
return {
  -- File finder
  {
    "dmtrKovalenko/fff.nvim",
    build = "cargo build --release",
    lazy = true,
    cmd = { "FFFFind", "FFFScan", "FFFRefreshGit" },
    opts = {
      base_path = vim.fn.getcwd(),
      prompt = "",
      title = "Find",
      max_results = 100,
      layout = {
        height = 0.8,
        width = 0.8,
        prompt_position = "bottom",
        preview_position = "right",
        preview_size = 0.5,
      },
      preview = {
        enabled = true,
        line_numbers = false,
        wrap_lines = false,
      },
      keymaps = {
        close = "<Esc>",
        select = "<CR>",
        select_split = "<C-s>",
        select_vsplit = "<C-v>",
        select_tab = "<C-t>",
        move_up = { "<Up>", "<C-p>" },
        move_down = { "<Down>", "<C-n>" },
      },
      frecency = { enabled = true },
    },
    keys = {
      {
        "<C-p>",
        function()
          local ok, fff = pcall(require, "fff")
          if ok then
            fff.find_files()
          else
            vim.notify("fff.nvim not ready. Try running :Lazy build fff.nvim", vim.log.levels.WARN)
          end
        end,
        desc = "Find Files with fff",
        mode = { "n", "i" },
      },
      {
        "ff",
        function()
          local ok, fff = pcall(require, "fff")
          if ok then
            fff.find_files()
          else
            vim.notify("fff.nvim not ready. Try running :Lazy build fff.nvim", vim.log.levels.WARN)
          end
        end,
        desc = "Find Files with fff",
        mode = "n",
      },
    },
  },

  -- Harpoon for quick file switching
  {
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

      -- Keymaps
      vim.keymap.set("n", "<leader>ha", function()
        harpoon:list():add()
        local filename = vim.fn.expand("%:t")
        if filename == "" then
          vim.notify("empty file", vim.log.levels.INFO)
        end
        local list = harpoon:list()
        local slot = list:length()
        vim.notify("📌 Harpooned: " .. filename .. " [slot " .. slot .. "]", vim.log.levels.INFO)
      end, { desc = "Harpoon add file" })

      vim.keymap.set("n", "<leader>h", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon quick menu" })

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

      -- Quick access to harpooned files
      for i = 1, 5 do
        vim.keymap.set("n", "<leader>" .. i, function()
          harpoon:list():select(i)
        end, { desc = "Harpoon to file " .. i })
      end
    end,
  },

  -- Tmux navigation
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}

