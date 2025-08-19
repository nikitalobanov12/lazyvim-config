return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
49 27 71 20 6d 61 69 7a 63 78
111 047 155  147 157 141 164 145 144
          ]],
        },
        sections = {
          { section = "header" },
          -- { section = "projects" },
          -- { section = "session", padding = 1 },
          {
            icon = "",
            key = "c",
            desc = "Config",
            padding = 1,
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = "󰒲", key = "l", desc = "Lazy", action = ":Lazy", padding = 1 },
          { icon = "", key = "x", desc = "Lazy Extras", action = ":LazyExtras", padding = 1 },
          {
            icon = "󰊤",
            desc = "Browse Repo",
            key = "b",
            padding = 1,
            action = function()
              Snacks.gitbrowse()
            end,
            enabled = function()
              return Snacks.git.get_root() ~= nil
            end,
          },
          {
            icon = "󰊢",
            title = "Git Status",
            section = "terminal",
            cmd = "git --no-pager diff --stat -B -M -C",
            height = 10,
            padding = 1,
            enabled = function()
              return Snacks.git.get_root() ~= nil
            end,
          },
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
