return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
		  require("plugins.plugin-configs.treesitter")
	  end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependancies = {"nvim-treesitter/nvim-treesitter"},
		config = function()
			require("plugins.plugin-configs.treesitter-context")
		end,
	},
}

