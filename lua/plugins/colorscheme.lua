return {
	-- Add Vesper colorscheme
	{
		"datsfilipe/vesper.nvim",
		priority = 1000,
		config = function()
			require("vesper").setup({
				transparent = false, -- Set to true if you want transparent background
				italics = {
					comments = true,
					keywords = false,
					functions = false,
					strings = false,
					variables = false,
				},
				overrides = {}, -- Custom color overrides if needed
				palette_overrides = {
					-- You can override specific colors here if needed
				},
			})
		end,
	},
	{
		"olivercederborg/poimandres.nvim", -- This has blue variants
		priority = 1000,
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
	-- Add Kanagawa colorscheme
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				compile = true, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = false, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				colors = { -- add/modify theme and palette colors
					palette = {},
					theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
				},
				overrides = function(colors) -- add/modify highlights
					return {}
				end,
				theme = "wave", -- Load "wave" theme when 'background' option is not set
				background = { -- map the value of 'background' option to a theme
					dark = "wave", -- try "dragon" !
					light = "lotus",
				},
			})
		end,
	},
	-- Configure LazyVim to use Kanagawa
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa-dragon", -- Changed from "poimandres" to "kanagawa"
		},
	},
}
