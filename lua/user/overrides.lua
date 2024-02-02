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
