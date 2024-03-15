-- Package:     indent-blankline.nvim
-- Description: Indent guides for NeoVim
-- URL:         https://github.com/lukas-reineke/indent-blankline.nvim
--
return {
	-- Add indentation guides even on blank lines
	{
		'lukas-reineke/indent-blankline.nvim',
		main = "ibl",
		config = function()
			local ibl = require("ibl")
			local hooks = require("ibl.hooks")
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}

			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			ibl.setup { indent = { highlight = highlight } }
		end,
		-- See `:help indent_blankline.txt`
		-- opts = {
		-- 	char = '│',
		-- 	show_trailing_blankline_indent = false,
		-- },
	},

}
