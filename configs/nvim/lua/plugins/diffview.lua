return({
	"sindrets/diffview.nvim",
	dependancies = { "nvim-lua/plenary.nvim"},
	config = function()
		require("plugins.plugin-configs.diffview")
	end,
})
