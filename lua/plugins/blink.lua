return {
  {
    "saghen/blink.cmp",
    enabled = true,
    opts = {
      completion = {
        accept = {
          auto_brackets = {
            enabled = false,
          },
        },
        menu = {
          auto_show = true, -- Keep the dropdown menu
        },
        ghost_text = {
          enabled = false, -- Disable the inline preview text
        },
      },
      snippet = {
        expand = function(snippet) end,
      },
    },
  },
}
