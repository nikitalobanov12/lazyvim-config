return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = {
        enabled = true,
      },
      picker = {
        enabled = true,
        -- Configure sources to include hidden and ignored files by default
        sources = {
          files = {
            hidden = true,
          },
          grep = {
            hidden = true,
          },
          explorer = {
            ignored = true,  -- Show git ignored files by default
            hidden = true,   -- Show hidden files by default
          },
        },
      },
    },
  },
}
