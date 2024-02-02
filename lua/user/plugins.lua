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
	{
		"dnlhc/glance.nvim",
		event = "BufRead",
		enabled = settings.glance,
	},
	{
		"karb94/neoscroll.nvim",
		enabled = settings.neoscroll,
	},
	{
		"echasnovski/mini.surround",
		version = "*",
		event = "VeryLazy",
		enabled = settings.surround,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"chentoast/marks.nvim",
		event = "BufRead",
		enabled = settings.marks,
		config = function(_, opts)
			require("marks").setup(opts)
		end,
	},
	{
		"VidocqH/lsp-lens.nvim",
		enabled = settings.lsplens,
	},
	{
		"stevearc/oil.nvim",
		event = "VeryLazy",
		enabled = settings.oil,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup()
		end,
	},
	{
}

reload("lua.user.configs.init")
