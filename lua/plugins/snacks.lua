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
        enabled = false, -- Disabled since using fff.nvim instead
        sources = {
          explorer = {
            layout = { layout = { position = "right" } },
          },
        },
      },
    },
  },
}
