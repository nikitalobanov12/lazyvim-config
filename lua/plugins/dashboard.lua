return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
49 27 71 20 6d 61 69 7a 63 78
6b 27 64 20 70 74 6d 69 7a 66 76 62
44 73 72 78 73 20 6c 6d 76 3f
          ]],
        },
        sections = {
          { section = "header" },
          -- { section = "projects" },
          -- { section = "session", padding = 1 },
          -- {
          --   icon = "",
          --   key = "c",
          --   desc = "Config",
          --   padding = 1,
          --   action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          -- },
          -- { icon = "󰒲", key = "l", desc = "Plugins", action = ":Lazy", padding = 1 },
          -- { icon = "", key = "x", desc = "Extras", action = ":LazyExtras", padding = 1 },
          -- {
          --   icon = "󰊤",
          --   desc = "Browse Repo",
          --   key = "b",
          --   padding = 1,
          --   action = function()
          --     Snacks.gitbrowse()
          --   end,
          --   enabled = function()
          --     return Snacks.git.get_root() ~= nil
          --   end,
          -- },
          -- {
          --   icon = "󰊢",
          --   title = "Git Status",
          --   section = "terminal",
          --   cmd = "git --no-pager diff --stat -B -M -C",
          --   height = 5,
          --   padding = 1,
          --   enabled = function()
          --     return Snacks.git.get_root() ~= nil
          --   end,
          -- },
        },
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    enabled = false,
  },
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.starter",
    enabled = false,
  },
}
