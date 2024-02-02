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
		keys = {
			{ mode = "n", "<leader>to", ':lua require("oil").toggle_float()<CR>', desc = "󰉕 Toggle Oil" },
			{ mode = { "n", "x" }, "<C-o>", ':lua require("oil").toggle_float()<CR>', desc = "󰉕 Toggle Oil" },
		},
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

	{
		"Exafunction/codeium.nvim",
		enabled = settings.codeium,
		keys = {
			{ mode = "n", "<leader>tc", ":lua require('codeium').setup()<CR>", desc = "󱚤 Enable Codeium" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup()
			local cmp_source = { name = "codeium" }
			table.insert(lvim.builtin.cmp.sources, 1, cmp_source)
			table.insert(lvim.builtin.cmp.formatting.source_names, { codeium = "Codeium" })
		end,
	},

	{
		"folke/trouble.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		enabled = settings.trouble,
	},

	{
		"stevearc/dressing.nvim",
		lazy = false,
		enabled = settings.dressing,
		config = function(_, opts)
			require("dressing").setup(opts)
		end,
	},
}

reload("lua.user.configs.init")
