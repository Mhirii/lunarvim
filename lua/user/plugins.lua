local M = {}

M.config = function()
	lvim.plugins = {
		-- themes --{
		{
			"rose-pine/neovim",
			name = "rose-pine",
			config = function()
				require("user.theme").rose_pine()
				lvim.colorscheme = "rose-pine"
			end,
			cond = function()
				local _time = os.date("*t")
				return (_time.hour >= 1 and _time.hour < 9) and lvim.builtin.time_based_themes
				-- return false
			end,
		},

		{
			"catppuccin/nvim",
			name = "catppuccin",
			config = function()
				require("user.theme").catppuccin()
				local _time = os.date("*t")
				if (_time.hour >= 17 and _time.hour < 21) and lvim.builtin.time_based_themes then
					lvim.colorscheme = "catppuccin-mocha"
				end
			end,
		},

		{
			"rebelot/kanagawa.nvim",
			config = function()
				require("user.theme").kanagawa()
				lvim.colorscheme = "kanagawa"
			end,
			cond = function()
				local _time = os.date("*t")
				return ((_time.hour >= 21 and _time.hour < 24) or (_time.hour >= 0 and _time.hour < 1))
					and lvim.builtin.time_based_themes
			end,
		},
		-- }

		-- lsp --{
		{
			"ray-x/lsp_signature.nvim",
			config = function()
				require("user.configs.lsp_signature").config()
			end,
			event = { "BufRead", "BufNew" },
		},

		{
			url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
			lazy = true,
			config = function()
				require("lsp_lines").setup()
			end,
			enabled = lvim.builtin.lsp_lines,
		},

		{
			"lvimuser/lsp-inlayhints.nvim",
			ft = { "javascript", "javascriptreact", "json", "jsonc", "typescript", "typescriptreact", "svelte" },
			-- enabled = lvim.builtin.inlay_hints.active,
			enabled = false,
			config = function()
				require("user.configs.lsp-inlayhints").config()
			end,
		},
		{
			"glepnir/lspsaga.nvim",
			event = "VeryLazy",
			config = true,
			dependencies = {
				{ "nvim-tree/nvim-web-devicons" },
				-- Please make sure you install markdown and markdown_inline parser
				{ "nvim-treesitter/nvim-treesitter" },
			},
		},

		--}

		-- Essentials --{
		{
			"folke/todo-comments.nvim",
			dependencies = "nvim-lua/plenary.nvim",
			config = function()
				require("user.configs.todo_comments").config()
			end,
			event = "BufRead",
		},

		{
			"folke/trouble.nvim",
			config = function()
				require("user.configs.trouble").config()
			end,
			event = "VeryLazy",
			cmd = "Trouble",
		},

		{
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("user.configs.colorizer").config()
			end,
			event = "BufReadPre",
		},

		{
			"olimorris/persisted.nvim",
			event = "BufReadPre",
			lazy = true,
			config = function()
				require("user.configs.persist").config()
			end,
			enabled = lvim.builtin.persistence.active,
		},

		{
			"ibhagwan/fzf-lua",
			config = function()
				-- calling `setup` is optional for customization
				local ff = require("user.configs.fzf")
				require("fzf-lua").setup(vim.tbl_deep_extend("keep", vim.deepcopy(ff.active_profile), ff.default_opts))
			end,
			enabled = not lvim.builtin.telescope.active,
		},

		{
			"echasnovski/mini.nvim",
			version = false,
			config = function()
				require("mini.surround").setup({
					mappings = {
						add = "sa",
						delete = "sd",
						find = "sf",
						find_left = "sF",
						highlight = "sh",
						replace = "sr",
						update_n_lines = "sn",
						suffix_last = "l",
						suffix_next = "n",
					},
				})
			end,
		},

		--}

		-- cmp --{
		{
			"hrsh7th/cmp-cmdline",
			enabled = lvim.builtin.fancy_wild_menu.active,
		},

		--}

		-- Qol --{
		{
			"simrat39/symbols-outline.nvim",
			config = function()
				require("user.configs.symbols_outline").config()
			end,
			event = "BufReadPost",
			enabled = lvim.builtin.tag_provider == "symbols-outline",
		},

		{
			"kevinhwang91/nvim-bqf",
			event = "WinEnter",
			config = function()
				require("user.configs.bqf").config()
			end,
		},

		{
			"windwp/nvim-spectre",
			lazy = true,
			config = function()
				require("user.configs.spectre").config()
			end,
		},

		{
			"danymat/neogen",
			lazy = true,
			config = function()
				require("neogen").setup({
					enabled = true,
				})
			end,
			dependencies = "nvim-treesitter/nvim-treesitter",
		},

		{
			"RishabhRD/nvim-cheat.sh",
			dependencies = "RishabhRD/popfix",
			config = function()
				vim.g.cheat_default_window_layout = "vertical_split"
			end,
			lazy = true,
			cmd = { "Cheat", "CheatWithoutComments", "CheatList", "CheatListWithoutComments" },
			keys = "<leader>?",
			enabled = lvim.builtin.cheat.active,
		},

		{
			"AckslD/nvim-neoclip.lua",
			config = function()
				require("user.configs.neoclip").config()
			end,
			lazy = true,
			keys = "<leader>y",
			dependencies = neoclip_req,
			enabled = lvim.builtin.neoclip.active,
		},

		{
			"ThePrimeagen/harpoon",
			dependencies = {
				{ "nvim-lua/plenary.nvim" },
				{ "nvim-lua/popup.nvim" },
			},
			enabled = lvim.builtin.harpoon.active,
		},

		{
			"sindrets/diffview.nvim",
			lazy = true,
			cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
			keys = { "<leader>gd", "<leader>gh" },
			config = function()
				require("user.configs.diffview").config()
			end,
			enabled = lvim.builtin.fancy_diff.active,
		},

		{ "mtdl9/vim-log-highlighting", ft = { "text", "log" } },

		{
			"nvim-telescope/telescope-file-browser.nvim",
			enabled = lvim.builtin.file_browser.active,
		},

		{
			"michaelb/sniprun",
			build = "bash ./install.sh",
			enabled = lvim.builtin.sniprun.active,
		},

		{
			"mrjones2014/legendary.nvim",
			config = function()
				require("user.configs.legendary").config()
			end,
			event = "VimEnter",
			enabled = lvim.builtin.legendary.active,
		},

		{
			"ThePrimeagen/refactoring.nvim",
			lazy = true,
			ft = { "typescript", "javascript", "lua", "c", "cpp", "go", "python", "java", "php" },
			event = "BufReadPost",
			config = function()
				require("refactoring").setup({})
			end,
			enabled = lvim.builtin.refactoring.active,
		},

		{
			"smjonas/inc-rename.nvim",
			lazy = true,
			cmd = "IncRename",
			config = function()
				require("inc_rename").setup()
			end,
			enabled = lvim.builtin.noice.active,
		},

		{
			"m-demare/hlargs.nvim",
			lazy = true,
			event = "VeryLazy",
			config = function()
				require("hlargs").setup({
					excluded_filetype = { "TelescopePrompt", "guihua", "guihua_rust", "clap_input" },
				})
			end,
			dependencies = { "nvim-treesitter/nvim-treesitter" },
			enabled = lvim.builtin.colored_args,
		},

		{
			"piersolenski/wtf.nvim",
			dependencies = {
				"MunifTanjim/nui.nvim",
			},
			event = "VeryLazy",
			opts = {
				popup_type = "vertical",
			},
			keys = {
				{
					"gw",
					mode = { "n" },
					function()
						require("wtf").ai()
					end,
					desc = "Debug diagnostic with AI",
				},
				{
					mode = { "n" },
					"gW",
					function()
						require("wtf").search()
					end,
					desc = "Search diagnostic with Google",
				},
			},
			enabled = lvim.builtin.sell_your_soul_to_devil.openai,
		},
		{
			"james1236/backseat.nvim",
			config = function()
				require("backseat").setup({
					highlight = {
						icon = "󰳃 ",
						group = "SpecialComment",
					},
				})
			end,
			event = "VeryLazy",
			enabled = lvim.builtin.sell_your_soul_to_devil.openai,
		},

		{
			"Wansmer/symbol-usage.nvim",
			event = "LspAttach",
			enabled = lvim.builtin.symbols_usage.active,
			config = function()
				require("user.configs.symbol_use").config()
			end,
		},

		{
			"vladdoster/remember.nvim",
			config = function()
				require("remember").setup({})
			end,
			enabled = lvim.builtin.lastplace.active,
		},

		{
			"nguyenvukhang/nvim-toggler",
			config = function()
				require("user.configs.toggler").config()
			end,
		},

		{
			"LudoPinelli/comment-box.nvim",
			event = "VeryLazy",
			config = function()
				require("user.configs.comment_box").config()
			end,
			enabled = lvim.builtin.comment_box.active,
		},

		{
			"nacro90/numb.nvim",
			config = function()
				require("numb").setup({
					hide_relativenumbers = true, -- Enable turning off 'relativenumber' for the window while peeking
					number_only = false, -- Peek only when the command is only a number instead of when it starts with a number
					centered_peeking = true, -- Peeked line will be centered relative to window
				})
			end,
		},

		--}

		-- Motions --{
		{
			"phaazon/hop.nvim",
			event = "VeryLazy",
			cmd = { "HopChar1CurrentLineAC", "HopChar1CurrentLineBC", "HopChar2MW", "HopWordMW" },
			config = function()
				require("user.configs.hop").config()
			end,
			enabled = lvim.builtin.motion_provider == "hop",
		},

		{
			"folke/flash.nvim",
			event = "VeryLazy",
			keys = require("user.configs.flash").keys,
			enabled = lvim.builtin.motion_provider == "flash",
		},

		{
			"ggandor/leap.nvim",
			config = function()
				require("user.leap").config()
			end,
			enabled = lvim.builtin.motion_provider == "leap",
		},

		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			lazy = true,
			event = "BufReadPre",
			dependencies = "nvim-treesitter",
		},

		--}

		-- Lang --{
		{
			"iamcco/markdown-preview.nvim",
			build = "cd app && npm install",
			ft = "markdown",
		},

		{
			"mrcjkb/rustaceanvim",
			version = "^3",
			init = function()
				require("user.configs.rust_tools").config()
			end,
			ft = { "rust", "rs" },
			enabled = lvim.builtin.rust_programming.active,
		},

		{
			"saecki/crates.nvim",
			event = { "BufRead Cargo.toml" },
			dependencies = { { "nvim-lua/plenary.nvim" } },
			config = function()
				require("user.configs.crates").config()
			end,
			enabled = lvim.builtin.rust_programming.active,
		},

		{
			"jose-elias-alvarez/typescript.nvim",
			ft = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
			},
			lazy = true,
			config = function()
				require("user.configs.tss").config()
			end,
			enabled = lvim.builtin.web_programming.active,
		},

		{
			"mxsdev/nvim-dap-vscode-js",
			ft = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
			},
			lazy = true,
			event = { "BufReadPre", "BufNew" },
			config = function()
				require("dap-vscode-js").setup({
					debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
					debugger_cmd = { "js-debug-adapter" },
					adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
				})
			end,
			enabled = false,
			-- enabled = lvim.builtin.web_programming.active,
		},

		{
			"vuki656/package-info.nvim", --npm
			config = function()
				require("package-info").setup()
			end,
			lazy = true,
			event = { "BufReadPre", "BufNew" },
			enabled = lvim.builtin.web_programming.active,
		},

		{
			"p00f/clangd_extensions.nvim",
			ft = { "c", "cpp", "objc", "objcpp", "h", "hpp" },
			enabled = lvim.builtin.cpp_programming.active,
		},

		{
			"Civitasv/cmake-tools.nvim",
			config = function()
				require("user.cle").cmake_config()
			end,
			ft = { "c", "cpp", "objc", "objcpp", "h", "hpp" },
			enabled = lvim.builtin.cpp_programming.active,
		},

		{
			"olexsmir/gopher.nvim",
			config = function()
				require("user.configs.gopher").config()
			end,
			ft = { "go", "gomod" },
			event = { "BufRead", "BufNew" },
			enabled = lvim.builtin.go_programming.active,
		},
		{
			"leoluz/nvim-dap-go",
			config = function()
				require("dap-go").setup()
			end,
			ft = { "go", "gomod" },
			event = { "BufRead", "BufNew" },
			enabled = lvim.builtin.go_programming.active,
		},

		{
			"mfussenegger/nvim-dap-python",
			config = function()
				local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")
				require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
				require("dap-python").test_runner = "pytest"
			end,
			ft = "python",
			event = { "BufRead", "BufNew" },
			enabled = lvim.builtin.python_programming.active,
		},
		{
			"AckslD/swenv.nvim",
			enabled = lvim.builtin.python_programming.active,
			ft = "python",
			event = { "BufRead", "BufNew" },
		},
		{
			"raimon49/requirements.txt.vim",
			event = "VeryLazy",
			enabled = lvim.builtin.python_programming.active,
		},

		--}

		--testing --{
		{
			"vim-test/vim-test",
			cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
			config = function()
				require("user.configs.vim_test").config()
			end,
			enabled = (lvim.builtin.test_runner.active and lvim.builtin.test_runner.runner == "ultest"),
		},

		{
			"nvim-neotest/neotest",
			config = function()
				require("user.configs.ntest").config()
			end,
			dependencies = {
				{ "nvim-neotest/neotest-plenary" },
			},
			event = { "BufReadPost", "BufNew" },
			enabled = (lvim.builtin.test_runner.active and lvim.builtin.test_runner.runner == "neotest"),
		},
		{ "nvim-neotest/neotest-go", event = { "BufEnter *.go" } },
		{ "nvim-neotest/neotest-python", event = { "BufEnter *.py" } },
		{ "rouge8/neotest-rust", event = { "BufEnter *.rs" } },

		{
			"skywind3000/asynctasks.vim",
			dependencies = {
				{ "skywind3000/asyncrun.vim" },
			},
			init = function()
				vim.cmd([[
          let g:asyncrun_open = 8
          let g:asynctask_template = '~/.config/lvim/task_template.ini'
          let g:asynctasks_extra_config = ['~/.config/lvim/tasks.ini']
        ]])
			end,
			event = { "BufRead", "BufNew" },
			enabled = lvim.builtin.task_runner == "async_tasks",
			{
				"jbyuki/instant.nvim",
				event = "BufRead",
				enabled = lvim.builtin.collaborative_editing.active,
			},
		},

		--}

		-- UI / Eye Candy --{
		{
			"karb94/neoscroll.nvim",
			config = function()
				require("neoscroll").setup({
					easing_function = "quadratic",
					hide_cursor = true,
				})
			end,
			event = "BufRead",
			enabled = lvim.builtin.smooth_scroll == "neoscroll",
		},

		{
			"abzcoding/nvim-mini-file-icons",
			config = function()
				require("nvim-web-devicons").setup()
			end,
			enabled = lvim.builtin.custom_web_devicons or not lvim.use_icons,
		},

		{
			"yamatsum/nvim-cursorline",
			lazy = true,
			event = "BufWinEnter",
			enabled = lvim.builtin.cursorline.active,
		},

		{
			"sidebar-nvim/sidebar.nvim",
			config = function()
				require("user.configs.sidebar").config()
			end,
			-- event = "BufRead",
			enabled = lvim.builtin.sidebar.active,
		},

		{
			"j-hui/fidget.nvim",
			branch = "legacy",
			config = function()
				require("user.configs.fidget_spinner").config()
			end,
			-- disable = lvim.builtin.noice.active,
		},

		{
			"liuchengxu/vista.vim",
			init = function()
				require("user.configs.vista").config()
			end,
			event = "BufReadPost",
			enabled = lvim.builtin.tag_provider == "vista",
		},

		{
			"stevearc/dressing.nvim",
			lazy = true,
			config = function()
				require("user.configs.dress").config()
			end,
			enabled = lvim.builtin.dressing.active,
			event = "BufWinEnter",
		},

		{
			"b0o/incline.nvim",
			config = function()
				require("user.configs.incline").config()
			end,
			enabled = lvim.builtin.winbar_provider == "filename",
		},

		{
			"SmiteshP/nvim-gps",
			module_pattern = { "gps", "nvim-gps" },
			config = function()
				require("user.configs.gps").config()
			end,
			dependencies = "nvim-treesitter/nvim-treesitter",
			event = { "InsertEnter", "CursorHoldI" },
			enabled = lvim.builtin.winbar_provider == "treesitter",
		},

		{
			"vimpostor/vim-tpipeline",
			enabled = lvim.builtin.tmux_lualine,
		},

		{
			"stevearc/overseer.nvim",
			config = function()
				require("user.configs.ovs").config()
			end,
			enabled = lvim.builtin.task_runner == "overseer",
		},

		{
			"lukas-reineke/indent-blankline.nvim",
			name = "new-indent",
			main = "ibl",
			enabled = lvim.builtin.indentlines.mine,
		},

		-- }

		-- SSH --{
		{
			"chipsenkbeil/distant.nvim",
			lazy = true,
			build = { "DistantInstall" },
			cmd = { "DistantLaunch", "DistantRun" },
			config = function()
				require("distant").setup({
					["*"] = vim.tbl_extend(
						"force",
						require("distant.settings").chip_default(),
						{ mode = "ssh" } -- use SSH mode by default
					),
				})
			end,
			enabled = lvim.builtin.remote_dev.active,
		},

		{
			"jbyuki/instant.nvim",
			event = "BufRead",
			enabled = lvim.builtin.collaborative_editing.active,
		},

		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			cmd = "Neotree",
			dependencies = {
				"MunifTanjim/nui.nvim",
			},
			config = function()
				require("user.configs.neotree").config()
			end,
			enabled = lvim.builtin.tree_provider == "neo-tree",
		},

		{ "MunifTanjim/nui.nvim" },
		{
			"folke/noice.nvim",
			event = "VeryLazy",
			config = function()
				require("user.configs.noice").config()
			end,
			dependencies = {
				"rcarriga/nvim-notify",
			},
			enabled = lvim.builtin.noice.active,
		},

		-- }

		-- AI --{
		{
			"tzachar/cmp-tabnine",
			build = "./install.sh",
			dependencies = "hrsh7th/nvim-cmp",
			config = function()
				local tabnine = require("cmp_tabnine.config")
				tabnine:setup({
					max_lines = 1000,
					max_num_results = 10,
					sort = true,
				})
			end,
			lazy = true,
			event = "InsertEnter",
			enabled = lvim.builtin.tabnine.active,
		},

		{
			"Exafunction/codeium.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"hrsh7th/nvim-cmp",
			},
			config = function()
				require("codeium").setup({})
				local cmp_source = { name = "codeium" }
				table.insert(lvim.builtin.cmp.sources, cmp_source)
			end,
			enabled = lvim.builtin.codeium,
		},
		-- }
	}
end

return M
