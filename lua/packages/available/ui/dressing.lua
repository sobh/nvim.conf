-- Package:	dressing.nvim
-- Description: Neovim plugin to improve the default vim.ui interfaces
-- URL:		https://github.com/stevearc/dressing.nvim
return {
	'stevearc/dressing.nvim',
	opts = {},
	-- lazy = true,
	-- init = function()
	-- 	---@diagnostic disable-next-line: duplicate-set-field
	-- 	vim.ui.select = function(...)
	-- 		require("lazy").load({ plugins = { "dressing.nvim" } })
	-- 		return vim.ui.select(...)
	-- 	end
	-- 	---@diagnostic disable-next-line: duplicate-set-field
	-- 	vim.ui.input = function(...)
	-- 		require("lazy").load({ plugins = { "dressing.nvim" } })
	-- 		return vim.ui.input(...)
	-- 	end
	-- end,
}

