return {
  {
    "dmtrKovalenko/fff.nvim",
    build = "cargo build --release",
    lazy = true, -- Load on demand
    cmd = { "FFFFind", "FFFScan", "FFFRefreshGit" },
    opts = {
      -- Configure fff options
      base_path = vim.fn.getcwd(),
      prompt = "  ",
      title = "FFFiles",
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
      frecency = {
        enabled = true,
      },
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
    config = function(_, opts)
      require("fff").setup(opts)
    end,
  },
}
