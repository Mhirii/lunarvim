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
		"nacro90/numb.nvim",
		event = "BufRead",
		config = function()
			require("numb").setup()
		end,
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
		"nguyenvukhang/nvim-toggler",
		config = function()
			require("nvim-toggler").setup({})
		end,
		keys = {
			{
				"<leader>i",
				mode = { "n", "v" },
				':lua require("nvim-toggler").toggle() <CR>',
				desc = "󰨙 Toggle",
			},
		},
	},
}

reload("lua.user.configs.init")
