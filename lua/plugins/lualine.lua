return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Remove all right-side elements
    opts.sections.lualine_x = {}
    opts.sections.lualine_y = {}
    opts.sections.lualine_z = {}

    return opts
  end,
}

