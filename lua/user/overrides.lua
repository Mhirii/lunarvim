-- Dashboard
-- =========================================
local lvim_dashboard = require("user.alpha.dashboard")
local lvim_startify = require("user.alpha.startify")
lvim.builtin.alpha = {
	dashboard = {
		config = {},
		section = lvim_dashboard.get_sections(),
		opts = { autostart = true },
	},
	startify = {
		config = {},
		section = lvim_startify.get_sections(),
		opts = { autostart = true },
	},
	active = true,
	mode = "dashboard",
}

-- =========================================
-- lvim.builtin.telescope.defaults.path_display = { "smart", "absolute", "truncate" }
lvim.builtin.telescope.defaults.dynamic_preview_title = true
lvim.builtin.telescope.defaults.path_display = { shorten = 10 }
lvim.builtin.telescope.defaults.prompt_prefix = "  "
lvim.builtin.telescope.defaults.borderchars = {
	prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	results = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
}
-- lvim.builtin.telescope.defaults.borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
lvim.builtin.telescope.defaults.winblend = 0
lvim.builtin.telescope.defaults.border = {}
lvim.builtin.telescope.defaults.selection_caret = "  "
lvim.builtin.telescope.defaults.cache_picker = { num_pickers = 3 }
lvim.builtin.telescope.defaults.layout_strategy = "flex"
lvim.builtin.telescope.pickers.git_files = {
	theme = "dropdown",
	layout_config = {
		horizontal = {
			prompt_position = "top",
			results_width = 0.8,
		},
		vertical = {
			mirror = false,
		},
		width = 0.6,
		height = 0.5,
		preview_cutoff = 120,
	},
}
lvim.builtin.telescope.defaultslayout_config = {
	horizontal = {
		prompt_position = "top",
		preview_width = 0.55,
		results_width = 0.8,
	},
	vertical = {
		mirror = false,
	},
	width = 0.87,
	height = 0.80,
	preview_cutoff = 120,
}
local user_telescope = require("user.telescope")
lvim.builtin.telescope.defaults.layout_config = user_telescope.layout_config()
local actions = require("telescope.actions")

local telescope_actions = require("telescope.actions.set")
lvim.builtin.telescope.pickers.git_files = {
	hidden = true,
	show_untracked = true,
	layout_strategy = "horizontal",
}
lvim.builtin.telescope.pickers.live_grep = {
	only_sort_text = true,
	layout_strategy = "horizontal",
}
lvim.builtin.telescope.pickers.find_files = {
	layout_strategy = "horizontal",
	attach_mappings = function(_)
		telescope_actions.select:enhance({
			post = function()
				vim.cmd(":normal! zx")
			end,
		})
		return true
	end,
	find_command = { "fd", "--type=file", "--hidden" },
}
lvim.builtin.telescope.pickers.buffers.sort_lastused = true
lvim.builtin.telescope.pickers.buffers.sort_mru = true
