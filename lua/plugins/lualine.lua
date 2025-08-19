return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.theme = "gruvbox"

    -- Remove time display (lualine_z typically shows time/clock)
    opts.sections.lualine_z = {}

    return opts
  end,
}
