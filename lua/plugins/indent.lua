return {
  -- Disable indent-blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },

  -- Disable mini.indentscope
  {
    "echasnovski/mini.indentscope",
    enabled = false,
  },

  -- If you have snacks.nvim indent, disable it too
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
    },
  },
}
