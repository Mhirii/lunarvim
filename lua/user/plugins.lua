local settings = reload("lua.user.settings")
lvim.plugins = {
	{
		"crusj/bookmarks.nvim",
		dependencies = { "nvim-web-devicons" },
		enabled = settings.bookmarks,
	},
	{
		"NvChad/nvim-colorizer.lua",
		enabled = settings.colorizer,
	},
	{
		"stevearc/conform.nvim",
		enabled = settings.conform,
	},

	{ "jose-elias-alvarez/null-ls.nvim", enabled = false },
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		enabled = settings.persist,
	},
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		enabled = settings.escape,
		config = function()
			reload("better_escape").setup()
		end,
	},
}

reload("lua.user.configs.init")
