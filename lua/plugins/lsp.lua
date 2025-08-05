return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable inlay hints globally
      if opts.inlay_hints then
        opts.inlay_hints.enabled = false
      else
        opts.inlay_hints = { enabled = false }
      end
      return opts
    end,
  },
}
