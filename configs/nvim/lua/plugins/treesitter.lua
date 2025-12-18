return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
	  require("plugins.plugin-configs.treesitter")
  end,
}
