---- File Explorer : nvim-tree.lua ---------------------------------------------
-- :help nvim-tree-commands
local explorer = require('nvim-tree.api')
local fn = {
	collapse = function()
		explorer.tree.collapse_all(false)
	end,
}
return {
	n = {
		['<leader>'] = {
			e = {
				name = 'Explorer',
				e = { explorer.tree.toggle, '[E]xplorer [E]xpand/Toggle' },
				f = { explorer.tree.focus,  '[E]xplorer [F]ocus' },
				s = { explorer.tree.toggle, '[E]xplorer [S]ync: Buffer to Explorer' },
				c = { fn.collapse,          '[E]xplorer [C]ollapse Tree' },
			}
		}
	}
}

