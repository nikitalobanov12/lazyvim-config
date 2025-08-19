return {
  {
    "datsfilipe/vesper.nvim",
    config = function()
      require("vesper").setup({
        transparent = false,
        italics = {
          comments = true,
          keywords = false,
          functions = false,
          strings = false,
          variables = false,
        },
        overrides = {},
        palette_overrides = {},
      })
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    config = function()
      require("poimandres").setup({
        bold_vert_split = false,
        dim_nc_background = true,
        disable_background = false,
        disable_float_background = false,
        disable_italics = false,
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "wave",
        background = {
          dark = "wave",
          light = "lotus",
        },
      })
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    config = function()
      require("nordic").setup({
        reduced_blue = false,
        swap_backgrounds = false,
        on_highlight = function(highlights, colors)
          -- Much darker background
          highlights.Normal = { bg = "#242424" }
          highlights.NormalFloat = { bg = "#1e1e1e" }

          -- Improve visual selection highlighting
          highlights.Visual = { bg = "#4c566a", fg = "#eceff4" }
          highlights.VisualNOS = { bg = "#4c566a", fg = "#eceff4" }

          -- Better search highlighting
          highlights.Search = { bg = "#ebcb8b", fg = "#2e3440" }
          highlights.IncSearch = { bg = "#d08770", fg = "#2e3440" }

          -- Darker sidebar and split backgrounds
          highlights.NormalNC = { bg = "#1e1e1e" }
          highlights.SignColumn = { bg = "#242424" }
          highlights.LineNr = { bg = "#242424" }
          highlights.CursorLineNr = { bg = "#242424" }

          -- Darker statusline
          highlights.StatusLine = { bg = "#1e1e1e" }
          highlights.StatusLineNC = { bg = "#1a1a1a" }

          -- Better cursor line
          highlights.CursorLine = { bg = "#2a2a2a" }

          -- Blue and white color scheme
          -- Main syntax elements in different shades of blue
          highlights.Function = { fg = "#c2e1ff" }
          highlights.Keyword = { fg = "#88c0d0" }
          highlights.Statement = { fg = "#88c0d0" }
          highlights.Conditional = { fg = "#88c0d0" }
          highlights.Repeat = { fg = "#88c0d0" }
          highlights.Label = { fg = "#88c0d0" }
          highlights.Operator = { fg = "#81a1c1" }
          highlights.Exception = { fg = "#88c0d0" }
          highlights.PreProc = { fg = "#5e81ac" }
          highlights.Include = { fg = "#5e81ac" }
          highlights.Define = { fg = "#5e81ac" }
          highlights.Macro = { fg = "#5e81ac" }
          highlights.PreCondit = { fg = "#5e81ac" }
          highlights.Type = { fg = "#c2e1ff" }
          highlights.StorageClass = { fg = "#81a1c1" }
          highlights.Structure = { fg = "#c2e1ff" }

          highlights.Typedef = { fg = "#c2e1ff" }

          -- Override orange/yellow elements with blues and whites
          highlights.String = { fg = "#eceff4" }
          highlights.Character = { fg = "#eceff4" }
          highlights.Number = { fg = "#d8dee9" }
          highlights.Boolean = { fg = "#81a1c1" }
          highlights.Float = { fg = "#d8dee9" }
          highlights.Identifier = { fg = "#e5e9f0" }
          highlights.Variable = { fg = "#e5e9f0" }
          highlights.Constant = { fg = "#d8dee9" }
          highlights.Special = { fg = "#88c0d0" }
          highlights.SpecialChar = { fg = "#88c0d0" }
          highlights.Tag = { fg = "#81a1c1" }
          highlights.Delimiter = { fg = "#d8dee9" }
          highlights.SpecialComment = { fg = "#616e88" }
          highlights.Debug = { fg = "#88c0d0" }

          -- Comments in muted blue-gray
          highlights.Comment = { fg = "#616e88", italic = true }

          -- Error and warning in subtle blues instead of reds
          highlights.Error = { fg = "#81a1c1", bg = "#3b4252" }
          highlights.ErrorMsg = { fg = "#81a1c1" }
          highlights.WarningMsg = { fg = "#88c0d0" }
        end,
      })
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = false,
        terminal_colors = true,
        devicons = true,
        styles = {
          comment = { italic = true },
          keyword = { italic = true },
          type = { italic = true },
          storageclass = { italic = true },
          structure = { italic = true },
          parameter = { italic = true },
          annotation = { italic = true },
          tag_attribute = { italic = true },
        },
        filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
        inc_search = "background",
        background_clear = {
          "toggleterm",
          "telescope",
          "renamer",
          "notify",
        },
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_highlight = "default",
            context_start_underline = false,
          },
        },
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      bold = true,
      undercurl = true,
      terminal_colors = true,
      contrast = "hard",
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
