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

reload("lua.user.configs.init")
