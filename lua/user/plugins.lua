lvim.plugins = {
	{
		"crusj/bookmarks.nvim",
		dependencies = { "nvim-web-devicons" },
		config = function()
			reload("user.configs.bookmarks")
		end,
	},

	{ -- FIXME: Change
		"NvChad/nvim-colorizer.lua",
	},

	{
		"stevearc/conform.nvim",
		config = function()
			reload("user.configs.conform")
		end,
	},

	{ "jose-elias-alvarez/null-ls.nvim", enabled = false },

	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		config = function()
			reload("user.configs.persist")
		end,
	},

	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			reload("better_escape").setup()
		end,
	},

	{
		"dnlhc/glance.nvim",
		event = "BufRead",
		config = function()
			reload("user.configs.glance")
		end,
	},

	{
		"karb94/neoscroll.nvim",
		config = function()
			reload("user.configs.neoscroll")
		end,
	},

	{
		"echasnovski/mini.surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("mini.surround").setup()
		end,
	},

	{
		"echasnovski/mini.indentscope",
		version = "false",
		event = "BufRead",
		config = function()
			require("mini.indentscope").setup({
				draw = {
					delay = 50,
				},
				symbol = "│",
			})
		end,
	},

	{
		"chentoast/marks.nvim",
		event = "BufRead",
		config = function(_, opts)
			-- require("marks").setup(opts)
			reload("user.configs.marks")
		end,
	},

	{
		"VidocqH/lsp-lens.nvim",
		config = function()
			reload("user.configs.lsplens")
		end,
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
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ mode = "n", "<leader>to", ':lua require("oil").toggle_float()<CR>', desc = "󰉕 Toggle Oil" },
			{ mode = { "n", "x" }, "<C-o>", ':lua require("oil").toggle_float()<CR>', desc = "󰉕 Toggle Oil" },
		},
		config = function()
			-- require("oil").setup()
			reload("user.configs.oil")
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
		config = function()
			reload("user.configs.trouble")
		end,
	},

	{
		"stevearc/dressing.nvim",
		lazy = false,
		config = function(_, opts)
			-- require("dressing").setup(opts)
			reload("user.configs.dressing")
		end,
	},

	{
		"j-hui/fidget.nvim",
		event = "VeryLazy",
		config = function()
			local opts = require("user.configs.fidget")
			require("fidget").setup(opts)
		end,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		config = function()
			local opts = require("user.configs.noice")
			require("noice").setup(opts)
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			reload("rose-pine").setup({
				variant = "main",
				styles = {
					italic = false,
					transparency = lvim.transparent_window,
				},
			})
		end,
	},

	{
		"jvgrootveld/telescope-zoxide",
		config = function()
			require("telescope").load_extension("zoxide")
		end,
		keys = {
			{ "<leader>sx", "<CMD>Telescope zoxide list<CR>" },
		},
	},

	{
		"lvimuser/lsp-inlayhints.nvim",
		config = function()
			reload("user.configs.inlayhints")
		end,
	},

	{
		"mrjones2014/smart-splits.nvim",
		config = function()
			reload("user.configs.smartsplits")
		end,
	},
}
